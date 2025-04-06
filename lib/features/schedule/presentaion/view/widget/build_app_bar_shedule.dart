import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

AppBar buildAppBarScheduel() {
  return AppBar(
    title: Row(
      spacing: 5,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            spacing: 5,
            children: [
              SvgPicture.asset(
                AppImages.assetsImagesNoteBottomBar,
                color: Colors.white,
                height: 11,
              ),
              Text(
                "Schedule",
                style: AppTextStyle.semiBold12.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        CustomIconAvatar(
          icon: Icons.call,
          color: AppColor.primaryColor,
          colorIcon: Colors.white,
          sizeIcon: 8,
          radius: 11,
        ),
        CustomIconAvatar(
          icon: FontAwesomeIcons.video,
          color: AppColor.primaryColor,
          colorIcon: Colors.white,
          sizeIcon: 8,
          radius: 11,
        ),
        CustomIconAvatar(
          icon: FontAwesomeIcons.solidMessage,
          color: AppColor.primaryColor,
          colorIcon: Colors.white,
          sizeIcon: 8,
          radius: 11,
        ),
        Spacer(),
        CustomIconAvatar(
          icon: Icons.question_mark,
          color: AppColor.lightPrimaryColor,
          colorIcon: AppColor.primaryColor,
          sizeIcon: 8,
          radius: 11,
        ),
        CustomIconAvatar(
          icon: FontAwesomeIcons.solidHeart,
          color: AppColor.lightPrimaryColor,
          colorIcon: AppColor.primaryColor,
          sizeIcon: 8,
          radius: 11,
        ),
      ],
    ),
  );
}
