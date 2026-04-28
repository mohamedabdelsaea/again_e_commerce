import 'package:again_e_commerce/core/them/app_color.dart';
import 'package:again_e_commerce/features/Presentation/manager/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/model/custom_form_filed.dart';
import '../../../core/route/page_route_name.dart';
import '../../../main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cubit = context.read<AuthCubit>();
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.15),
              Text(
                'Welcome Back App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Please sign in with your mail',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 34),
              Text(
                'User Name :',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 20),

              TextFormField(
                controller: cubit.signInUserNameController,
                decoration: CustomFormFiled.inputDecoration('Enter Your Name'),
                style: CustomFormFiled.textStyle(fontSize: 18),
                cursorColor: CustomFormFiled.cursorColor,
              ),
              SizedBox(height: 40),
              Text(
                'User Password :',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: cubit.signInPasswordController,
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
                    cubit.signIn().then((value) {
                      if (value) {
                        navigatorKey.currentState!.pushNamedAndRemoveUntil(
                          PageRouteName.layOut,
                          (route) => false,
                        );
                      }
                    });
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  Text(
                    'Don’t have an account !? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      navigatorKey.currentState!.pushNamed(
                        PageRouteName.signUp,
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
