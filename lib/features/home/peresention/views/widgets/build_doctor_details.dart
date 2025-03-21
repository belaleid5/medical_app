import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class BuildDoctorDetails extends StatelessWidget {
  const BuildDoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dr. Olivia Turner, M.D.",
          style: AppTextStyle.semiBold14.copyWith(color: AppColor.primaryColor),
        ),
        Text(
          "Treatment and prevention of \nskin and photodermatitis.",
          style: AppTextStyle.semiBold12Weight300.copyWith(
            letterSpacing: 0.0,
            wordSpacing: 0.2,
            height: 0.8,
          ),
        ),
      ],
    );
  }
}
