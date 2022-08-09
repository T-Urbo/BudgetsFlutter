import { Body, Controller, Delete, Get, Patch, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { User } from './user.decorator';
import { UpdateUserDto } from './user.dto';
import { UserEntity } from './user.entity';
import { UserService } from './user.service';

@UseGuards(JwtAuthGuard)
@Controller('user')
export class UserController {
	constructor(private userService: UserService) {}

	@Get()
	findById(@User('id') id: number): Promise<UserEntity> {
		return this.userService.findById(id);
	}

	@Patch()
	update(@User('id') userId: number, @Body() data: UpdateUserDto): Promise<UserEntity> {
		return this.userService.update(userId, data);
	}

	@Delete()
	delete(@User('id') userId: number): Promise<UserEntity> {
		return this.userService.delete(userId);
	}
}
