import 'package:again_e_commerce/core/failures/failure.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/entity/category_data.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryAndProductRepositories {

  Future<Either<Failure,List<CategoryData>>> getCategory();
}