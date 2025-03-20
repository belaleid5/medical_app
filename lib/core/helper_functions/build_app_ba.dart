import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

AppBar buildAppBar() {
  return AppBar(
    title: const Text('Doctors'),
    actions: [
      CustomIconAvatar(
        icon: FontAwesomeIcons.searchengin,
        color: AppColor.lightPrimaryColor,
      ),
    ],
  );
}
