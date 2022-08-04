import { Request, Response, NextFunction, RequestHandler } from 'express';
import Hero from '../models/hero';

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
const getHeroesByTeam = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { team } = req.params;
    const heroes = await Hero.getHeroesByTeam(Number(team));
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

const getTeam = async (req: Request, res: Response, next: NextFunction) => {
  try {
    req.body.team = req.params.team;
    next();
  } catch (err) {
    next(err);
  }
};

//GET completed by power and hero
const getHeroAndPowerByHeroPowers = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idHero } = req.params;
    const heroPowerCompleted = await Hero.getHeroAndPowerByHeroPowers(
      Number(idHero)
    );
    return res.status(200).json(heroPowerCompleted);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

export default {
  getAllHeroes,
  getHeroById,
  getHeroesByTeam,
  getTeam,
  getHeroAndPowerByHeroPowers,
};
