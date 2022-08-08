import { Column, Entity, JoinColumn, ManyToOne, OneToMany } from 'typeorm';
import { AbstractEntity } from '../common/abstract-entity';
import { ExpenseEntity } from '../expense/expense.entity';
import { WalletEntity } from '../wallet/wallet.entity';

@Entity('categories')
export class CategoryEntity extends AbstractEntity {
	@Column()
	name: string;

	@Column()
	color: string;

	@Column()
	walletId: number;

	@ManyToOne(() => WalletEntity, (wallet) => wallet.categories, {
		onDelete: 'CASCADE',
	})
	@JoinColumn({ name: 'walletId' })
	wallet: WalletEntity;

	@OneToMany(() => ExpenseEntity, (expense) => expense.category)
	expenses: ExpenseEntity[];
}
