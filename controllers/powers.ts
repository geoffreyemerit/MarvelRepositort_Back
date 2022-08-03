import { Request, Response, NextFunction, RequestHandler } from 'express';
import Power from '../models/power';
import { ErrorHandler } from '../helpers/errors';
import IPower from '../interfaces/IPower';
import Joi from 'joi';

// VALIDATE INPUT FOR POST AND PUT
const validatePower = (req: Request, res: Response, next: NextFunction) => {
  let required: Joi.PresenceMode = 'optional';
  if ((req.method === 'POST', 'PUT')) {
    required = 'required';
  }

  const errors = Joi.object({
    id: Joi.number().required(),
    power: [Joi.string().max(255).required()],
  }).validate(req.body, { abortEarly: false }).error;

  if (errors) {
    next(new ErrorHandler(422, errors.message));
  } else {
    next();
  }
};

// EXIST
// checks if an power exists before update or delete
const powerExists = async (req: Request, res: Response, next: NextFunction) => {
  const { idPower } = req.params;

  const powerExists: IPower = await Power.getPowerById(Number(idPower));
  if (!powerExists) {
    next(new ErrorHandler(409, `This power does not exist`));
  } else {
    req.record = powerExists;
    next();
  }
};

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
  validatePower,
  powerExists,
  getAllPowers,
  getPowerById,
};
