import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:dartz/dartz.dart';

abstract  class AuthRepositories {


 Future<Either<String ,bool>> signIn(SignInRequest data );
  signUp();

}