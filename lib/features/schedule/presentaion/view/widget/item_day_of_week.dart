import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class ItemDayOfWeek extends StatelessWidget {
  const ItemDayOfWeek({super.key, required this.dayOfWeek});

  final String dayOfWeek;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        dayOfWeek,
        style: AppTextStyle.semiBold12.copyWith(color: Colors.white),
      ),
    );
  }
}
