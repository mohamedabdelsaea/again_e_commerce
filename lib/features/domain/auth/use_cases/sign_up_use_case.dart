import 'package:again_e_commerce/core/failures/failure.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_up_request.dart';
import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase {
  final AuthRepositories _authRepositories;

  SignUpUseCase(this._authRepositories);

  Future<Either<Failure, bool>> call(SignUpRequest data) async {
    return await _authRepositories.signUp(data);
  }
}
