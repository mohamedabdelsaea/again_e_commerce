import 'dart:developer';

import 'package:again_e_commerce/core/route/app_route.dart';
import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:again_e_commerce/features/domain/auth/entity/sign_in_response.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

var data1=SignInResponse(userName: 'm7md', email: 'm7md', token: 'm7md');
var data2=SignInResponse(userName: 'm7md', email: 'm7md', token: 'm7md');

log(data1.hashCode.toString());
log(data2.hashCode.toString());

return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey:navigatorKey ,
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: PageRouteName.initial,

    );
  }
}


