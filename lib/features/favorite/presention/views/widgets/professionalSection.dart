import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/image_icon_avatar.dart';

class CustomProfessionalSection extends StatelessWidget {
  const CustomProfessionalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIconAvatar(image: AppImages.assetsImagesProfIcon),
        Text(
          'Professional Doctor',
          style: AppTextStyle.semiBold20.copyWith(
            color: AppColor.primaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
