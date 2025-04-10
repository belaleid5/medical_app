import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class AToZ extends StatelessWidget {
  const AToZ({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "A ---> Z",
        style: AppTextStyle.semiBold12.copyWith(
          color: color == null ? Colors.white : color,
        ),
      ),
    );
  }
}
