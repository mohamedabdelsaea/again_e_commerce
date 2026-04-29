import 'package:again_e_commerce/features/Presentation/manager/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/Presentation/layout/lay_out_screen.dart';
import '../../features/Presentation/layout/shopping/shopping_screen.dart';
import '../../features/Presentation/sign_in/sign_in_screen.dart';
import '../../features/Presentation/sign_up/sign_up_screen.dart';
import '../../features/Presentation/splash/splash_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case PageRouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: SignInScreen(),
          ),
        );

      case PageRouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: SignUpScreen(),
          ),
        );

      case PageRouteName.layOut:
        return MaterialPageRoute(builder: (context) => LayOutScreen());

      case PageRouteName.shopping:
        return MaterialPageRoute(builder: (context) => ShoppingScreen());

      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
