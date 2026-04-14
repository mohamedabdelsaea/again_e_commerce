import 'package:again_e_commerce/features/data/auth/data_source/auth_interface_data_source.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:dio/dio.dart';

class RemoteAuthDataSource implements AuthInterfaceDataSource {
  final Dio _dio;

  RemoteAuthDataSource(this._dio);

  @override
  Future<Response>  signIn(SignInRequest data) async {
    return await _dio.post('/api/v1/auth/signIn/', data: data.toJson());
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
