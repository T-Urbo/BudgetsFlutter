import { Body, Controller, Delete, Get, Param, Patch, Post, UseGuards } from '@nestjs/common'
import { JwtAuthGuard } from 'src/auth/jwt-auth.guard'
import { User } from 'src/user/user.decorator'
import { CreateCategoryDto, UpdateCategoryDto } from './category.dto'
import { CategoryEntity } from './category.entity'
import { CategoryOwnerGuard } from './category.guard'
import { CategoryService } from './category.service'

@UseGuards(JwtAuthGuard)
@Controller('category')
export class CategoryController {
	constructor(private categoryService: CategoryService) {}

	@Post()
	createCategory(
		@User('walletId') walletId: number,
		@Body() createCategoryDto: CreateCategoryDto,
	): Promise<CategoryEntity> {
		return this.categoryService.createCategory(walletId, createCategoryDto)
	}

	@Get()
	findAll(@User('walletId') walletId: number): Promise<CategoryEntity[]> {
		return this.categoryService.findAll(walletId)
	}

	@Get(':id')
	@UseGuards(CategoryOwnerGuard)
	findById(@Param('id') id: number): Promise<CategoryEntity> {
		return this.categoryService.findById(id)
	}

	@Patch(':id')
	@UseGuards(CategoryOwnerGuard)
	update(
		@Param('id') id: number,
		@Body() updateCategoryDto: UpdateCategoryDto,
	): Promise<CategoryEntity> {
		return this.categoryService.update(id, updateCategoryDto)
	}

	@Delete(':id')
	@UseGuards(CategoryOwnerGuard)
	delete(@Param('id') id: number): Promise<CategoryEntity> {
		return this.categoryService.delete(id)
	}
}
