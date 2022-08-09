import { Injectable, Logger, NotFoundException } from '@nestjs/common';
import * as bcrypt from 'bcryptjs';
import { UserRepository } from './user.repository';
import { UpdateUserDto } from './user.dto';
import { UserEntity } from './user.entity';

@Injectable()
export class UserService {
	private readonly logger: Logger;

	constructor(private readonly userRepository: UserRepository) {
		this.logger = new Logger();
	}

	async findById(id: number): Promise<UserEntity> {
		try {
			const user = await this.userRepository.findOneOrFail(id, {
				relations: ['wallet'],
			});
			this.logger.log(`GET USER ID=${id}`);
			return user;
		} catch (error) {
			this.logger.error(error);
			throw new NotFoundException();
		}
	}

	async update(id: number, data: UpdateUserDto): Promise<UserEntity> {
		try {
			const user = await this.userRepository.findOneOrFail(id);
			data.password = bcrypt.hashSync(data.password, 10);
			const res = await this.userRepository.save({ ...user, ...data });
			delete res.password;
			this.logger.log(`UPDATE USER ID=${id}`);
			return res;
		} catch (error) {
			this.logger.error(error);
			throw new NotFoundException();
		}
	}

	async delete(id: number): Promise<UserEntity> {
		try {
			const user = await this.userRepository.findOneOrFail(id);
			await this.userRepository.delete({ id: user.id });
			delete user.password;
			this.logger.log(`DELETE USER ID=${id}`);
			return user;
		} catch (error) {
			this.logger.error(error);
			throw new NotFoundException();
		}
	}
}
