import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTypingWidget extends StatelessWidget {
  const CustomTypingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Dr. Olivia is typing...',
          style: AppTextStyle.semiBold12.copyWith(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
