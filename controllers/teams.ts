import { Request, Response, NextFunction, RequestHandler } from 'express';
import Team from '../models/team';
import { ErrorHandler } from '../helpers/errors';
import ITeam from '../interfaces/ITeam';
import Joi from 'joi';

// VALIDATE INPUT FOR POST AND PUT
const validateTeam = (req: Request, res: Response, next: NextFunction) => {
  let required: Joi.PresenceMode = 'optional';
  if ((req.method === 'POST', 'PUT')) {
    required = 'required';
  }

  const errors = Joi.object({
    id: Joi.number().required(),
    name: [Joi.string().max(255).required()],
  }).validate(req.body, { abortEarly: false }).error;

  if (errors) {
    next(new ErrorHandler(422, errors.message));
  } else {
    next();
  }
};

// EXIST
// checks if an team exists before update or delete
const teamExists = async (req: Request, res: Response, next: NextFunction) => {
  const { idTeam } = req.params;

  const teamExists: ITeam = await Team.getTeamById(Number(idTeam));
  if (!teamExists) {
    next(new ErrorHandler(409, `This team does not exist`));
  } else {
    req.record = teamExists;
    next();
  }
};

//GET ALL TEAMS
const getAllTeams = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const teams = await Team.getAllTeams();
    res.setHeader(
      'Content-Range',
      `pages : 0-${teams.length}/${teams.length + 1}`
    );
    return res.status(200).json(teams);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

// GET BY ID
const getTeamById = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idTeam } = req.params;
    const teams = await Team.getTeamById(Number(idTeam));
    teams ? res.status(200).json(teams) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

export default {
  validateTeam,
  teamExists,
  getAllTeams,
  getTeamById,
};
