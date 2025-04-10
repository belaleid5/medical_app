import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';

class ImageIconAvatar extends StatelessWidget {
  const ImageIconAvatar({
    super.key,
    required this.image,
    this.color,
    this.backgroundColor,
  });
  final String image;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: backgroundColor ?? AppColor.lightPrimaryColor,
      child: SvgPicture.asset(image, height: 12, color: color),
    );
  }
}
