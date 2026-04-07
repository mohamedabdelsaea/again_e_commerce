import 'package:again_e_commerce/core/route/page_route_name.dart';
import 'package:again_e_commerce/main.dart';
import 'package:flutter/material.dart';
import '../../core/them/app_color.dart';
import '../../model/custom_form_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.15),
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Full Name :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: CustomFormFiled.inputDecoration('Enter Your Full Name'),
                style: CustomFormFiled.textStyle(fontSize: 18),
                cursorColor: CustomFormFiled.cursorColor,
              ),
              SizedBox(height: 30),
              Text(
                'Mobile Number :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLength: 11,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: CustomFormFiled.inputDecoration(
                  'Enter Your Mobile Num',
                ),
                style: CustomFormFiled.textStyle(fontSize: 18),

                cursorColor: CustomFormFiled.cursorColor,
              ),
              SizedBox(height: 10),
              Text(
                'E_mail Address :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: CustomFormFiled.inputDecoration('Enter Your email Address'),
                style: CustomFormFiled.textStyle(fontSize: 18),
                cursorColor: CustomFormFiled.cursorColor,
              ),
              SizedBox(height: 30),
              Text(
                'Password :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  ),
                  hintStyle: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  filled: true,
                  fillColor: AppColor.white,
                  focusColor: AppColor.primary,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColor.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColor.white, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                style: CustomFormFiled.textStyle(fontSize: 18),
                cursorColor: CustomFormFiled.cursorColor,
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                height: size.height * 0.06,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    navigatorKey.currentState!.pushNamedAndRemoveUntil(
                      PageRouteName.layOut,
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
