import 'package:dio/dio.dart';

abstract class CategoryAndProductInterFaceDataSource {
  Future<Response> getCategories();
}

class RemoteCategoryAndProductDataSource
    implements CategoryAndProductInterFaceDataSource {
  final Dio _dio;

  RemoteCategoryAndProductDataSource(this._dio);

  @override
  Future<Response> getCategories() async {
    return await _dio.get("/api/v1/categories");
  }
}
