import 'package:again_e_commerce/core/them/app_color.dart';
import 'package:again_e_commerce/main.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        title: Text(
          'Product Details',
          style: TextStyle(color: AppColor.primary),
        ),
        leading: IconButton(
          onPressed: () {
            navigatorKey.currentState!.pop();
          },
          icon: Icon(Icons.arrow_back, color: AppColor.primary, size: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_outlined, size: 30, color: AppColor.primary),
          ),
        ],
      ),
      backgroundColor: AppColor.white,
    );
  }
}
