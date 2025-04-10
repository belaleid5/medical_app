import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';

class CustomUserProfileImage extends StatelessWidget {
  const CustomUserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: CircleAvatar(
              backgroundColor: AppColor.primaryColor,
              radius: 50,
              child: Image.asset(AppImages.assetsUserImageProfile, height: 105),
            ),
          ),
          CircleAvatar(
            backgroundColor: AppColor.primaryColor,
            radius: 14,
            child: FaIcon(
              FontAwesomeIcons.pencil,
              size: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
