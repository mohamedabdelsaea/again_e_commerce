part of 'auth_cubit.dart';

abstract class AuthStates {
  const AuthStates();
}

class InitialAuthState extends AuthStates {
  const InitialAuthState();
}

class SelectedAuthState extends AuthStates {
  const SelectedAuthState();
}
