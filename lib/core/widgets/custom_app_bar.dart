import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.color,
    this.iconBar,
  });
  final String title;
  final Color? color;
  final IconData? iconBar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.arrow_back_ios, color: AppColor.primaryColor),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.30),
        Text(
          title,
          style: AppTextStyle.semiBold24.copyWith(color: AppColor.primaryColor),
        ),
        Spacer(),
        CustomIconAvatar(
          icon: iconBar!,
          colorIcon: Colors.white,
          color: color!,
        ),
      ],
    );
  }
}
