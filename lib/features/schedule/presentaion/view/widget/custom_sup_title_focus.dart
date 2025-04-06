import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomSupTitleFocus extends StatelessWidget {
  const CustomSupTitleFocus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120.h,
      width: 108.w,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        textAlign: TextAlign.center,
        style: AppTextStyle.semiBold12Weight300.copyWith(
          color: Colors.white,
          height: 1,
        ),
        "Focus: The impact \nof hormonal \nimbalances on\n skin conditions,\n specializing in\n acne, hirsutism, \nand other skin\n disorders.",
      ),
    );
  }
}
