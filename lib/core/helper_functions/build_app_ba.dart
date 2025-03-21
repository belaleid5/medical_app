import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/image_icon_avatar.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Text(
      'Doctors',
      style: AppTextStyle.semiBold24Weight600.copyWith(
        color: AppColor.primaryColor,
      ),
    ),
    actionsPadding: EdgeInsets.only(right: 10),
    actions: [
      ImageIconAvatar(image: AppImages.assetsImagesSearch),
      const SizedBox(width: 10),
      ImageIconAvatar(image: AppImages.assetsImagesMenuIconBlue),
    ],
  );
}
