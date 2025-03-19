import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class DoctorImage extends StatelessWidget {
  final String image;

  const DoctorImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.lightPrimaryColor,
      radius: 28,
      backgroundImage: AssetImage(image),
    );
  }
}
