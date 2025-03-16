import 'package:flutter/material.dart';
import 'package:medical_app/core/helper_functions/biuld_border.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    required this.hint,
    this.colorHint,
    this.suffixIcon,
    this.obscureText = false,
  });
  final TextInputType keyboardType;
  final String hint;

  final Color? colorHint;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: AppColor.lightSecondryColor,
        filled: true,
        hintText: hint,
        hintStyle: AppTextStyle.semiBold20.copyWith(
          color: colorHint ?? AppColor.hintColor,
        ),
        enabledBorder: biuldBorder(),
        focusedBorder: biuldBorder(),
        disabledBorder: biuldBorder(),
      ),
    );
  }
}
