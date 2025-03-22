import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class MakeAppointmentWidget extends StatelessWidget {
  const MakeAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      margin: EdgeInsets.only(left: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "Make Appointment",
        style: AppTextStyle.semiBold12.copyWith(color: Colors.white),
      ),
    );
  }
}
