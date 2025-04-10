import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';

class CustomNotification extends StatelessWidget {
  const CustomNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21,

      backgroundColor: AppColor.secondaryColor,
      child: Badge(
        backgroundColor: AppColor.primaryColor,
        smallSize: 6,
        child: SvgPicture.asset(AppImages.assetsImagesNotefication, height: 21),
      ),
    );
  }
}
