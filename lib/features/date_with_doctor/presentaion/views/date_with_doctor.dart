import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/build_app_bar_date_with_doctor.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_tab_bar_month.dart';

class DateWithDoctorView extends StatelessWidget {
  const DateWithDoctorView({super.key});
  static const routeName = "DateWithDoctorView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarDAteWithDoctor(),
      body: Column(
        children: [CustomTapBarMonth(), CustomAvailableTimeListWidget()],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomAvailableTimeListWidget extends StatelessWidget {
  CustomAvailableTimeListWidget({super.key});

  List<String> ListAvailableTimes = [
    "9:00 AM",
    "9:30 AM",
    "10:00 AM",
    "7:30 PM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
  ];

  final String selectedTime = "10:00 AM";
  final List<String> availableTimes = [
    "11:30 AM",
    "1:00 PM",
    "1:30 PM",
    "2:30 PM",
    "3:00 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(
          "Available Time",
          style: AppTextStyle.semiBold14.copyWith(color: AppColor.primaryColor),
        ),
        Center(
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children:
                ListAvailableTimes.map((time) {
                  final isSelected = time == selectedTime;
                  final isAvailable = availableTimes.contains(time);

                  Color backgroundColor;
                  Color textColor;

                  if (isSelected) {
                    backgroundColor = Colors.blue.shade700;
                    textColor = Colors.white;
                  } else if (isAvailable) {
                    backgroundColor = Colors.blue.shade100;
                    textColor = Colors.black87;
                  } else {
                    backgroundColor = Colors.blue.shade50;
                    textColor = Colors.blue.shade300;
                  }

                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
