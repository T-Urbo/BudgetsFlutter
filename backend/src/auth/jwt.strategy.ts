import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ConfigService } from '@nestjs/config';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { AuthPayload } from '../user/user.dto';
import { UserRepository } from '../user/user.repository';
import { WalletRepository } from '../wallet/wallet.repository';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
	constructor(
		private userRepository: UserRepository,
		private configService: ConfigService,
		private walletRepository: WalletRepository,
	) {
		super({
			jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
			ignoreExpiration: false,
			secretOrKey: configService.get<string>('SECRET_KEY') || 'secret',
		});
	}

	async validate(
		payload: AuthPayload,
	): Promise<{ email: string; username: string; password: string; walletId: number }> {
		const user = await this.userRepository.findOne(payload.id);
		const wallet = await this.walletRepository.findOneOrFail({ where: { userId: user.id } });
		return { ...user, walletId: wallet.id };
	}
}
