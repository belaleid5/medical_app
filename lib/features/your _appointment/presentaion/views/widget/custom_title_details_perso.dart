import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTitleDetailsPerson extends StatelessWidget {
  const CustomTitleDetailsPerson({
    super.key,
    required this.title,
    this.fontWeight,
  });
  final String title;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.semiBold12Weight300.copyWith(
        fontWeight: fontWeight ?? FontWeight.w300,
      ),
    );
  }
}
