import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class DoctorNameAndJob extends StatelessWidget {
  final String name, jobTitle;

  const DoctorNameAndJob({
    super.key,
    required this.name,
    required this.jobTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: AppTextStyle.semiBold14.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
          Text(jobTitle, style: AppTextStyle.semiBold12Weight300),
        ],
      ),
    );
  }
}
