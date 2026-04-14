import 'package:again_e_commerce/features/data/auth/data_source/auth_interface_data_source.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoriesImp implements AuthRepositories {
  final AuthInterfaceDataSource _authInterfaceDataSource;

  AuthRepositoriesImp(this._authInterfaceDataSource);

  @override
  Future<Either<String, bool>> signIn(SignInRequest data) async {
    try {
      final response = await _authInterfaceDataSource.signIn(data);
      if (response.statusCode == 200) {
        return Right(true);
      } else {
        return Left('message${response.statusCode}!!Fail');
      }
    } on DioException catch (dioException) {
      return Left(
        'message?${dioException.response?.statusCode.toString() ?? 'Fail'}',
      );
    }

  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
