import 'package:dio/dio.dart';

abstract class CategoryAndProductInterFaceDataSource {
  Future<Response> getCategories();
}

class CategoryAndProductDataSource
    implements CategoryAndProductInterFaceDataSource {
  final Dio _dio;

  CategoryAndProductDataSource(this._dio);

  @override
  Future<Response> getCategories() async {
    return await _dio.get("/api/v1/categories");
  }
}
