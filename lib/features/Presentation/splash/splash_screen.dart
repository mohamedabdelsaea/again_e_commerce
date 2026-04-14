import 'dart:async';

import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:again_e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      navigatorKey.currentState!.pushNamedAndRemoveUntil(
        PageRouteName.signIn,
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.5,
            child: Lottie.asset('assets/json/Hello, Hi.json'),
          ),
        ),
      ),
    );
  }
}
