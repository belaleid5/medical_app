import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomTitleSection extends StatelessWidget {
  const CustomTitleSection({
    super.key,
    required this.title,
    required this.color,
    required this.containerColor,
  });
  final String title;
  final Color color, containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(title, style: AppTextStyle.semiBold20.copyWith(color: color)),
    );
  }
}
