import { Request, Response, NextFunction, RequestHandler } from 'express';
import Hero from '../models/hero';
import { ErrorHandler } from '../helpers/errors';
import IHero from '../interfaces/IHero';
import Joi from 'joi';

// VALIDATE INPUT FOR POST AND PUT
const validateHero = (req: Request, res: Response, next: NextFunction) => {
  let required: Joi.PresenceMode = 'optional';
  if ((req.method === 'POST', 'PUT')) {
    required = 'required';
  }

  const errors = Joi.object({
    id: Joi.number().required(),
    lastname: [Joi.string().max(255).required()],
    firstname: [Joi.string().max(255).required()],
    identity: [Joi.string().max(255).required()],
    picture: [Joi.string().max(255).required()],
    origin: [Joi.string().max(255).required()],
    description: [Joi.string().required()],
    team: [Joi.number().required()],
  }).validate(req.body, { abortEarly: false }).error;

  if (errors) {
    next(new ErrorHandler(422, errors.message));
  } else {
    next();
  }
};

// EXIST
// checks if an hero exists before update or delete
const heroExists = async (req: Request, res: Response, next: NextFunction) => {
  const { idHero } = req.params;

  const heroExists: IHero = await Hero.getHeroById(Number(idHero));
  if (!heroExists) {
    next(new ErrorHandler(409, `This hero does not exist`));
  } else {
    req.record = heroExists;
    next();
  }
};

//GET ALL HEROES
const getAllHeroes = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const heroes = await Hero.getAllHeroes();
    res.setHeader(
      'Content-Range',
      `pages : 0-${heroes.length}/${heroes.length + 1}`
    );
    return res.status(200).json(heroes);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

// GET BY ID
const getHeroById = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idHero } = req.params;
    const heroes = await Hero.getHeroById(Number(idHero));
    heroes ? res.status(200).json(heroes) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

// GET BY TEAM
const getHeroByTeam = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { team } = req.params;
    const heroes = await Hero.getHeroByTeam(Number(team));
    if (heroes) {
      res.setHeader(
        'Content-Range',
        `pages : 0-${heroes.length}/${heroes.length + 1}`
      );
      res.status(200).json(heroes);
    } else res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

export default {
  validateHero,
  heroExists,
  getAllHeroes,
  getHeroById,
  getHeroByTeam,
};
