import 'package:dartz/dartz.dart';

abstract  class AuthRepositories {


 Future<Either<String ,bool>> login();
  signUp();

}