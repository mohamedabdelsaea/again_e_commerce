import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:dio/dio.dart';

abstract class AuthInterfaceDataSource {

 Future<Response> signIn(SignInRequest data);
  signUp();
}