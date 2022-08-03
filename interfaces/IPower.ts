import { RowDataPacket } from 'mysql2';

export default interface IPower extends RowDataPacket {
  id: number;
  power: string;
}
