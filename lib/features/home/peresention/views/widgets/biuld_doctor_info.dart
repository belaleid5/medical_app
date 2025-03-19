import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/home/peresention/views/widgets/build_doctor.card.dart';

class BuildDoctorInfo extends StatelessWidget {
  const BuildDoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "11 Wednesday - Today",
          style: AppTextStyle.semiBold12Weight300.copyWith(
            color: AppColor.hintColor,
          ),
        ),
        const SizedBox(height: 3),
        SvgPicture.asset(AppImages.assetsDividerDotted),
        const SizedBox(height: 11),
        BuildDoctorCard(),
        const SizedBox(height: 11),
        SvgPicture.asset(AppImages.assetsDividerDotted),
      ],
    );
  }
}
