import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/custom_auth_social_icon.dart';

class SectionAuthSocial extends StatelessWidget {
  const SectionAuthSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomAuthsocialIcon(image: AppImages.assetsImagesGoogleItem),
        SizedBox(width: 9),
        CustomAuthsocialIcon(image: AppImages.assetsImagesFaceBookItem),
        SizedBox(width: 9),
        CustomAuthsocialIcon(image: AppImages.assetsImagesFingerItem),
      ],
    );
  }
}
