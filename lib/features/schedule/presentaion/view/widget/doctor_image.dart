import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_images.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80),
      child: Image.asset(
        AppImages.assetsImagesDrOlivia,
        height: 150.h,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
