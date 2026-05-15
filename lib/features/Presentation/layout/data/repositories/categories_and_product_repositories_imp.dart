import 'package:again_e_commerce/core/failures/failure.dart';
import 'package:again_e_commerce/features/Presentation/layout/data/data_sorce/category_and_product_inter_face_data_source.dart';
import 'package:again_e_commerce/features/Presentation/layout/data/model/category_model.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/entity/category_data.dart';
import 'package:again_e_commerce/features/Presentation/layout/domain/repositories/category_and_product_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../core/failures/server_failure.dart';

class CategoriesAndProductRepositoriesImp
    implements CategoryAndProductRepositories {
  final CategoryAndProductInterFaceDataSource
  _categoryAndProductInterFaceDataSource;

  CategoriesAndProductRepositoriesImp(
    this._categoryAndProductInterFaceDataSource,
  );

  @override
  Future<Either<Failure, List<CategoryData>>> getCategory() async {
    try {
      final response = await _categoryAndProductInterFaceDataSource.getCategories();
      List<CategoryModel> dataList = [];
      if (response.statusCode == 200) {
        for (var e in response.data["data"]){
          dataList.add(
            CategoryModel.fromJson(e),
          );
        }
        return Right(dataList);
      } else {
        return Left(
          ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data['Message'],
          ),
        );
      }
    } on DioException catch (dioException) {
      return Left(
        ServerFailure(
          statusCode: dioException.response?.statusCode.toString() ?? '',
          message: dioException.response?.data['Message'],
        ),
      );
    }
  }
}
