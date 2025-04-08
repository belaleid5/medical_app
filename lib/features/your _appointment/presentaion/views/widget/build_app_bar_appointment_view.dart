import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

AppBar buildAppBarYourAppointmentView() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "YourAppointment",
        style: AppTextStyle.semiBold24Weight600.copyWith(
          color: AppColor.primaryColor,
        ),
      ),
    );
  }