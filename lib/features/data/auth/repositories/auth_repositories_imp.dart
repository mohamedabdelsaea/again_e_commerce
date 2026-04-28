import 'package:again_e_commerce/core/failures/failures.dart';
import 'package:again_e_commerce/features/data/auth/data_source/auth_interface_data_source.dart';
import 'package:again_e_commerce/features/data/auth/models/sign_in_model.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_response.dart';
import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoriesImp implements AuthRepositories {
  final AuthInterfaceDataSource _authInterfaceDataSource;

  AuthRepositoriesImp(this._authInterfaceDataSource);

  @override
  Future<Either<Failure, SignInResponse>> signIn(SignInRequest data) async {
    try {
      final response = await _authInterfaceDataSource.signIn(data);
      if (response.statusCode == 200) {
        var data = SignInModel.fromJson(response.data);
        return Right(data);
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
          statusCode: dioException.response?.statusCode.toString()??'',
          message: dioException.response?.data['Message'],
        ),
      );
    }
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
