import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class TextWidgetMonth extends StatelessWidget {
  const TextWidgetMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "<  Month  >",
      style: AppTextStyle.semiBold14.copyWith(color: AppColor.primaryColor),
    );
  }
}
