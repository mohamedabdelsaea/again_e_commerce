class SignUpRequest {
  final String name;
  final String email;
  final String password;
  final String phone;

  SignUpRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "rePassword": password,
      "phone": phone,
    };
  }
}
