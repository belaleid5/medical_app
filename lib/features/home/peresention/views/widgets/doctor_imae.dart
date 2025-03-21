import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class DoctorImage extends StatelessWidget {
  final String image;
  final double? radiusImage;
  const DoctorImage({super.key, required this.image, this.radiusImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: CircleAvatar(
        backgroundColor: AppColor.lightPrimaryColor,
        radius: radiusImage == null ? 28 : radiusImage,
        child: Image.asset(image),
      ),
    );
  }
}
