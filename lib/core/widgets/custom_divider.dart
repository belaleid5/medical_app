import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: AppColor.primaryColor);
  }
}
