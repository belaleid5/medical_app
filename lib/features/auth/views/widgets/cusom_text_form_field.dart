import 'package:flutter/material.dart';
import 'package:medical_app/core/helper_functions/biuld_border.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    required this.hint,
    this.icon,
    this.colorHint,
    this.obscureText = false,
    required this.onSaved,
    this.validator,
  });
  final TextInputType keyboardType;
  final String hint;
  final Widget? icon;
  final Color? colorHint;
  final bool obscureText;
  final void Function(String?) onSaved;
  final String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSaved,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: icon,
        fillColor: AppColor.lightSecondryColor,
        filled: true,
        hintText: hint,
        hintStyle: AppTextStyle.semiBold20.copyWith(
          color: colorHint ?? AppColor.hintColor,
        ),
        enabledBorder: biuldBorder(),
        focusedBorder: biuldBorder(),
        disabledBorder: biuldBorder(),

        errorBorder: biuldBorder(),
      ),
    );
  }
}
