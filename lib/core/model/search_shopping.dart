import 'package:flutter/material.dart';
import '../../main.dart';
import '../route/page_route_name.dart';
import '../them/app_color.dart';

class SearchShopping extends StatelessWidget {
  const SearchShopping({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: size.width*0.02,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.05,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'What do you search for ?',
                  hintStyle: TextStyle(color: AppColor.primary, fontSize: 16),
                  focusColor: AppColor.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: AppColor.primary, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: AppColor.primary, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: AppColor.primary,
                    size: 30,
                  ),
                ),
                cursorColor: AppColor.primary,
              ),
            ),
            IconButton(
              onPressed: () {
                navigatorKey.currentState!.pushNamed(PageRouteName.shopping);
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: AppColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
