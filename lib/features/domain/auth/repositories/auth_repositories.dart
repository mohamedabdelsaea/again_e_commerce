import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_response.dart';
import 'package:dartz/dartz.dart';

abstract  class AuthRepositories {


 Future<Either<String ,SignInResponse>> signIn(SignInRequest data );
  signUp();

}