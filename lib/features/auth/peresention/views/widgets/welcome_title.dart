import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome",
      style: AppTextStyle.semiBold24.copyWith(color: AppColor.primaryColor),
    );
  }
}
