import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomAppBarNotification extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarNotification({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.only(right: 10),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.lightPrimaryColor,
          ),
          child: Row(
            spacing: 5,
            children: [
              Text(
                "News",
                style: AppTextStyle.semiBold20.copyWith(fontSize: 14),
              ),
              CircleAvatar(radius: 5, backgroundColor: AppColor.primaryColor),
            ],
          ),
        ),
      ],
      centerTitle: true,
      title: Text(
        "Notification",
        style: AppTextStyle.semiBold24Weight600.copyWith(
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
