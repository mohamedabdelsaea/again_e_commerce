import 'package:again_e_commerce/core/them/app_color.dart';
import 'package:again_e_commerce/features/Presentation/layout/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'categories/categories_screen.dart';
import 'favorites/favorites_screen.dart';
import 'home/home_screen.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({super.key});

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  int selectedIndex = 0;
  List<Widget> home = [
    HomeScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primary,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColor.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/ic_home.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/ic_category.png')),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/heart.png')),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/ic_profile.png')),
            label: 'Profile',
          ),
        ],
      ),
      body: home[selectedIndex],
    );
  }
}
