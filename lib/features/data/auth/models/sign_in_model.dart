import '../../../domain/auth/entity/sign_in_response.dart';

class SignInModel extends SignInResponse {
  SignInModel({
    required super.userName,
    required super.email,
    required super.token,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
    userName: json['user']?['name'] ?? "",
    email: json['user']?['email'] ?? "",
    token: json['token'] ?? "",
  );
}
