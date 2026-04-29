class SignInRequest {
  final String userName;
  final String password;

  SignInRequest({required this.userName, required this.password});

  Map<String, dynamic> toJson() {
    return {'email': userName, 'password': password};
  }
}
