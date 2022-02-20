import { DocumentBuilder } from '@nestjs/swagger';

export const config = new DocumentBuilder()
  .setTitle('Users Api')
  .setDescription('For study')
  .setVersion('1.0')
  .addTag('users')
  .build();
