import { Request, Response, NextFunction, RequestHandler } from 'express';
import Team from '../models/team';

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
  getAllTeams,
  getTeamById,
};
