import { ResultSetHeader } from 'mysql2';
import connection from '../db-config.js';
import ITeam from '../interfaces/ITeam';

// GET ALL
const getAllTeams = async (sortBy = ''): Promise<ITeam[]> => {
  let sql: string = 'SELECT * FROM teams';
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await connection.promise().query<ITeam[]>(sql);
  return results[0];
};

//GET BY ID
const getTeamById = async (idTeam: number): Promise<ITeam> => {
  const [results] = await connection
    .promise()
    .query<ITeam[]>('SELECT * FROM teams WHERE id = ?', [idTeam]);
  return results[0];
};

export default {
  getAllTeams,
  getTeamById,
};
