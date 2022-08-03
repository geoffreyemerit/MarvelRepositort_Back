import { ResultSetHeader } from 'mysql2';
import connection from '../db-config.js';
import IHero_Power from '../interfaces/IHero_Power';

// GET ALL
const getAllHeroes_Powers = async (sortBy = ''): Promise<IHero_Power[]> => {
  let sql: string = 'SELECT * FROM hero_powers';
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await connection.promise().query<IHero_Power[]>(sql);
  return results[0];
};

//GET BY ID
const getHero_PowerById = async (
  idHero_Power: number
): Promise<IHero_Power> => {
  const [results] = await connection
    .promise()
    .query<IHero_Power[]>('SELECT * FROM hero_powers WHERE id = ?', [
      idHero_Power,
    ]);
  return results[0];
};

export default {
  getAllHeroes_Powers,
  getHero_PowerById,
};
