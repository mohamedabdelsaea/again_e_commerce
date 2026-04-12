import 'package:again_e_commerce/core/them/app_color.dart';
import 'package:flutter/material.dart';
import '../../../core/model/profile_form_filed.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Text(
                'Welcome :  Mohamed',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              Text(
                'Mohamed.abdo@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 35),
              Text(
                'Your Full Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: ProfileFormFiled.inputDecoration('Name'),
                cursorColor: ProfileFormFiled.cursorColor,
                style: ProfileFormFiled.textStyle(),
              ),
              SizedBox(height: 20),
              Text(
                'Your E Mail',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: ProfileFormFiled.inputDecoration('Name'),
                cursorColor: ProfileFormFiled.cursorColor,
                style: ProfileFormFiled.textStyle(),
              ),
              SizedBox(height: 20),
              Text(
                'Your Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: ProfileFormFiled.inputDecoration('Name'),
                cursorColor: ProfileFormFiled.cursorColor,
                style: ProfileFormFiled.textStyle(),
              ),
              SizedBox(height: 20),
              Text(
                'Your Mobile Number ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: ProfileFormFiled.inputDecoration('Name'),
                cursorColor: ProfileFormFiled.cursorColor,
                style: ProfileFormFiled.textStyle(),
              ),
              SizedBox(height: 20),
              Text(
                'Your Address',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: ProfileFormFiled.inputDecoration('Name'),
                cursorColor: ProfileFormFiled.cursorColor,
                style: ProfileFormFiled.textStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
