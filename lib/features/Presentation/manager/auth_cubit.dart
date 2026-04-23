import 'dart:developer';

import 'package:again_e_commerce/core/failures/failures.dart';
import 'package:again_e_commerce/features/data/auth/data_source/auth_interface_data_source.dart';
import 'package:again_e_commerce/features/data/auth/data_source/remote_auth_data_source.dart';
import 'package:again_e_commerce/features/data/auth/repositories/auth_repositories_imp.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_request.dart';
import 'package:again_e_commerce/features/domain/auth/repositories/auth_repositories.dart';
import 'package:again_e_commerce/features/domain/auth/use_cases/sign_in_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(const InitialAuthState());
  late SignInUseCase _signInUseCase;
  late AuthRepositories _authRepositories;
  late AuthInterfaceDataSource _authInterfaceDataSource;

  Future<void> signIn() async {
    _signInUseCase = SignInUseCase(_authRepositories);
    _authRepositories = AuthRepositoriesImp(_authInterfaceDataSource);
    _authInterfaceDataSource = RemoteAuthDataSource(Dio());

    var data = SignInRequest(userName: 'userName', password: 'password');

    final result = await _signInUseCase.call(data);
    return result.fold((fail) {
      var errorMessage = fail as ServerFailure;

      log(errorMessage.errorCode.toString());
      log(errorMessage.statusCode.toString());
    }, (data) {});
  }
}
