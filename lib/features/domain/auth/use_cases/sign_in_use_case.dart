import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:dartz/dartz.dart';

class SignInUseCase {
  final AuthRepositories _authRepositories;

  SignInUseCase(this._authRepositories);

  Future<Either<String, bool>> call(SignInRequest data) async {
    return await _authRepositories.signIn(data);
  }
}
