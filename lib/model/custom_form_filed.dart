import 'package:flutter/material.dart';
import '../core/them/app_color.dart';

class CustomFormFiled {
  static InputDecoration inputDecoration(String hint, {double fontSize = 16}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: AppColor.primary,
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }

  static TextStyle textStyle({double fontSize = 16}) {
    return TextStyle(
      color: AppColor.primary,
      fontSize: fontSize,
    );
  }

  static Color cursorColor = AppColor.primary;
}
