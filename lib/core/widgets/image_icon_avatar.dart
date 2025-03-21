import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';

class ImageIconAvatar extends StatelessWidget {
  const ImageIconAvatar({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: AppColor.lightPrimaryColor,
      child: SvgPicture.asset(image, height: 12, width: 12),
    );
  }
}
