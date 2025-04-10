import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTitleIconGotToPage extends StatelessWidget {
  const CustomTitleIconGotToPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.semiBold12Weight300.copyWith(
        color: AppColor.primaryColor,
      ),
    );
  }
}
