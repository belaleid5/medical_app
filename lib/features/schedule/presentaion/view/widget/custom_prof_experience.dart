import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/image_icon_avatar.dart';

class CustomProfExperience extends StatelessWidget {
  const CustomProfExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 108.w,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 5,
        children: [
          ImageIconAvatarSvg(image: AppImages.assetsImagesProfIcon),
          Text(
            "20 years\nexperience",
            style: AppTextStyle.semiBold12Weight300.copyWith(
              color: Colors.white,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
