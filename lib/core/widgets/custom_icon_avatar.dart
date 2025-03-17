import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomIconAvatar extends StatelessWidget {
  const CustomIconAvatar({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21,
      backgroundColor: AppColor.secondaryColor,
      child: SvgPicture.asset(icon, height: 21),
    );
  }
}
