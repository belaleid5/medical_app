import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/custom_widget_month.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/date_doctor.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/list_day_of_week.dart';

class CardDayOfMonth extends StatelessWidget {
  const CardDayOfMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: double.infinity,
      color: AppColor.lightPrimaryColor,
      child: Expanded(
        child: Column(
          spacing: 10,
          children: [
            SizedBox(height: 10.h),
            TextWidgetMonth(),
            ListDayOfWeek(),
            WeekDatePicker(),
          ],
        ),
      ),
    );
  }
}
