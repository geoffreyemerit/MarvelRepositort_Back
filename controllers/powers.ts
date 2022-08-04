import { Request, Response, NextFunction, RequestHandler } from 'express';
import Power from '../models/power';

//GET ALL POWERS
const getAllPowers = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const powers = await Power.getAllPowers();
    res.setHeader(
      'Content-Range',
      `pages : 0-${powers.length}/${powers.length + 1}`
    );
    return res.status(200).json(powers);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

// GET BY ID
const getPowerById = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idPower } = req.params;
    const powers = await Power.getPowerById(Number(idPower));
    powers ? res.status(200).json(powers) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;

export default {
  getAllPowers,
  getPowerById,
};
