import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomAuthsocialIcon extends StatelessWidget {
  const CustomAuthsocialIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.secondaryColor,
      child: SvgPicture.asset(image),
    );
  }
}
