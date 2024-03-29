import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserController } from './user.controller';
import { UserRepository } from './user.repository';
import { UserService } from './user.service';

@Module({
	imports: [TypeOrmModule.forFeature([UserRepository]), PassportModule.register({ defaultStrategy: 'jwt' })],
	providers: [UserService],
	controllers: [UserController],
})
export class UserModule {}
