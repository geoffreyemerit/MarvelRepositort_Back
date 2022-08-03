import { RowDataPacket } from 'mysql2';

export default interface IHero_Power extends RowDataPacket {
  id: number;
  power_id: number;
  hero_id: number;
}
