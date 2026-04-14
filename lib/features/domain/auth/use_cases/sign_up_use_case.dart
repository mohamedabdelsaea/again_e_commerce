import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase {
  final AuthRepositories _authRepositories;

  SignUpUseCase(this._authRepositories);

  Future<Either<String, bool>> call() async {
    return await _authRepositories.signUp();
  }
}
