import { RowDataPacket } from 'mysql2';

export default interface IHero extends RowDataPacket {
  id: number;
  lastname: string;
  firstname: string;
  identity: string;
  picture: string;
  origin: string;
  team: number;
}
