import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomBorderRadiusWidget extends StatelessWidget {
  const CustomBorderRadiusWidget({
    super.key,
    required this.title,
    required this.backColor,
    required this.titleColor,
  });
  final String title;
  final Color backColor, titleColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backColor,
        border: Border.all(color: AppColor.primaryColor, width: 1.0),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Text(
        title,
        style: AppTextStyle.semiBold12.copyWith(color: titleColor),
      ),
    );
  }
}
