import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class DoctorImage extends StatelessWidget {
  final String image;
  final double? radiusImage;
  const DoctorImage({
    super.key,
    required this.image,
    this.radiusImage,
    this.height,
  });

  final double? height;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.lightPrimaryColor,
      radius: radiusImage == null ? 28 : radiusImage,
      child: Image.asset(image, height: height, width: 250),
    );
  }
}
