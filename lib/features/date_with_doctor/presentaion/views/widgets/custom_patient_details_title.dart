import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomPatientDetailsTitle extends StatelessWidget {
  const CustomPatientDetailsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Patient Details",
        style: AppTextStyle.semiBold14.copyWith(color: AppColor.primaryColor),
      ),
    );
  }
}
