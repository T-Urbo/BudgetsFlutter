import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from './auth/auth.module';
import { DatabaseConnectionService } from './database-connection.service';
import { UserModule } from './user/user.module';

@Module({
	imports: [
		ConfigModule.forRoot({
			isGlobal: true,
			envFilePath: '.env',
		}),
		TypeOrmModule.forRootAsync({
			useClass: DatabaseConnectionService,
		}),
		AuthModule,
		UserModule,
	],
})
export class AppModule {}
