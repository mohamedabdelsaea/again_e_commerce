class SignInResponse {
  final String userName;
  final String email;
  final String token;

  const SignInResponse({
    required this.userName,
    required this.email,
    required this.token,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignInResponse &&
          runtimeType == other.runtimeType &&
          userName == other.userName &&
          email == other.email &&
          token == other.token;

  @override
  int get hashCode => Object.hash(userName, email, token);
}
