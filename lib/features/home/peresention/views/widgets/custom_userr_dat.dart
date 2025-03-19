import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomUserData extends StatelessWidget {
  const CustomUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: SizedBox(
            height: 41,
            width: 41,
            child: Image.asset(AppImages.assetsUserImage, fit: BoxFit.cover),
          ),
        ),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Hi, WelcomeBack",
                style: AppTextStyle.semiBold12.copyWith(
                  fontWeight: FontWeight.w300,
                  color: AppColor.primaryColor,
                ),
              ),
              TextSpan(
                text: "\nJane Doe",
                style: AppTextStyle.semiBold20.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
