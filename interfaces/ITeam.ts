import { RowDataPacket } from 'mysql2';

export default interface ITeam extends RowDataPacket {
  id: number;
  name: string;
}
