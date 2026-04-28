import 'package:again_e_commerce/core/route/app_route.dart';
import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: PageRouteName.initial,
      builder: EasyLoading.init(builder: BotToastInit()),
    );
  }
}
