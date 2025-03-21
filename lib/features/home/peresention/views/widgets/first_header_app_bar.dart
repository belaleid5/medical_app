import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_notification_icon.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_userr_dat.dart';

class FirstHeaderAppBar extends StatelessWidget {
  const FirstHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        CustomUserData(),
        Spacer(),
        CustomNotification(),
        CustomIconAvatar(
          icon: Icons.settings,
          color: AppColor.lightPrimaryColor,
        ),
      ],
    );
  }
}
