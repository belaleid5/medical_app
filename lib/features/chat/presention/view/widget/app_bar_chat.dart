import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

class AppBarChat extends StatelessWidget implements PreferredSizeWidget {
  const AppBarChat({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.only(right: 5),
      backgroundColor: AppColor.primaryColor,
      centerTitle: true,
      title: Text(
        "Dr. Olivia Turner",
        style: AppTextStyle.semiBold24Weight600.copyWith(
          fontSize: 20,

          color: Colors.white,
        ),
      ),
      actions: [
        CustomIconAvatar(
          icon: Icons.call,
          color: Colors.white,
          colorIcon: AppColor.primaryColor,
          sizeIcon: 14,
          radius: 16,
        ),
        SizedBox(width: 5),
        CustomIconAvatar(
          icon: FontAwesomeIcons.video,
          color: Colors.white,
          colorIcon: AppColor.primaryColor,
          sizeIcon: 14,
          radius: 14,
        ),
      ],
    );
  }
}
