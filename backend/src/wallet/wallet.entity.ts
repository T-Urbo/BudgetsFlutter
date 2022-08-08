import { CategoryEntity } from '../categories/category.entity';
import { AbstractEntity } from '../common/abstract-entity';
import { ExpenseEntity } from '../expense/expense.entity';
import { UserEntity } from '../user/user.entity';
import { Column, Entity, JoinColumn, OneToMany, OneToOne } from 'typeorm';

@Entity('wallets')
export class WalletEntity extends AbstractEntity {
	@Column()
	userId: number;

	@OneToOne(() => UserEntity, (user) => user.wallet, { onDelete: 'CASCADE' })
	@JoinColumn({ name: 'userId' })
	user: UserEntity;

	@OneToMany(() => CategoryEntity, (category) => category.wallet)
	categories: CategoryEntity[];

	@OneToMany(() => ExpenseEntity, (expense) => expense.wallet)
	expenses: ExpenseEntity[];
}
