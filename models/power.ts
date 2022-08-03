import { ResultSetHeader } from 'mysql2';
import connection from '../db-config.js';
import IPower from '../interfaces/IPower';

// GET ALL
const getAllPowers = async (sortBy = ''): Promise<IPower[]> => {
  let sql: string = 'SELECT * FROM powers';
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await connection.promise().query<IPower[]>(sql);
  return results[0];
};

//GET BY ID
const getPowerById = async (idPower: number): Promise<IPower> => {
  const [results] = await connection
    .promise()
    .query<IPower[]>('SELECT * FROM powers WHERE id = ?', [idPower]);
  return results[0];
};

export default {
  getAllPowers,
  getPowerById,
};
