import { Column, Entity, OneToOne, Unique } from 'typeorm';
import * as bcrypt from 'bcryptjs';
import { Exclude, instanceToPlain } from 'class-transformer';
import { IsEmail, MinLength } from 'class-validator';
import { AbstractEntity } from '../common/abstract-entity';
import { WalletEntity } from '../wallet/wallet.entity';

@Entity('users')
@Unique('users_unique', ['email', 'username'])
export class UserEntity extends AbstractEntity {
	@IsEmail()
	@Column()
	email: string;

	@Column()
	username: string;

	@MinLength(4)
	@Column()
	@Exclude()
	password: string;

	@OneToOne(() => WalletEntity, (wallet) => wallet.user)
	wallet: WalletEntity;

	comparePassword(attempt: string): boolean {
		return bcrypt.compareSync(attempt, this.password);
	}

	toJson(): Record<string, any> {
		return instanceToPlain(this);
	}
}
