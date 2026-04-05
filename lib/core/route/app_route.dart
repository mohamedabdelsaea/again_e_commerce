import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:again_e_commerce/modules/layout/lay_out_screen.dart';
import 'package:again_e_commerce/modules/sign_in/sign_in_screen.dart';
import 'package:again_e_commerce/modules/sign_up/sign_up_screen.dart';
import 'package:again_e_commerce/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case PageRouteName.signIn:
        return MaterialPageRoute(builder: (context) => SignInScreen());

      case PageRouteName.signUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen());

        case PageRouteName.layOut:
        return MaterialPageRoute(builder: (context) => LayOutScreen());

      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
