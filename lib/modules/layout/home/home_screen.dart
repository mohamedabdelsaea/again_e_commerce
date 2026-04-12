import 'package:again_e_commerce/core/them/app_color.dart';
import 'package:flutter/material.dart';
import '../../../core/model/search_shopping.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          SearchShopping(),
        ],
      ),
    );
  }
}
