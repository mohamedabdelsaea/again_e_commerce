import 'package:flutter/material.dart';
import '../them/app_color.dart';

class ProfileFormFiled {
  static InputDecoration inputDecoration(String hint, {double fontSize = 14}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: AppColor.primary,
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      ),
      suffixIcon: IconButton(onPressed: () {
      }, icon: Icon(Icons.border_color_rounded,color: AppColor.primary,)),
      filled: true,
      fillColor: AppColor.white,
      focusColor: AppColor.primary,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColor.primary, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColor.primary, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red, width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }

  static TextStyle textStyle({double fontSize = 16}) {
    return TextStyle(color: AppColor.primary, fontSize: fontSize);
  }

  static Color cursorColor = AppColor.primary;
}
