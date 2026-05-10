import 'package:again_e_commerce/core/failures/failure.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/entity/category_data.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/repositories/category_and_product_repositories.dart';
import 'package:dartz/dartz.dart';

class GetCategoriesUseCase {
  final CategoryAndProductRepositories _andProductRepositories;

  GetCategoriesUseCase(this._andProductRepositories);

  Future<Either<Failure, List<CategoryData>>> call() async {
    return await _andProductRepositories.getCategory();
  }
}
