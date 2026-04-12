import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';

class SignUpUseCase {
  final AuthRepositories _authRepositories;

  SignUpUseCase(this._authRepositories);

  call() {
    return _authRepositories.signUp();
  }
}
