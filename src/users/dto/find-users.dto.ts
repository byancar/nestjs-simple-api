import { BaseQueryDto } from '../../common/dto/base-query.dto';

export class FindUsersQueryDto extends BaseQueryDto {
  name: string;
  email: string;
  status: boolean;
  role: string;
}
