import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/models/tab_bar_model.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_tab_bar_list.dart';

class CustomTapBarMonth extends StatelessWidget {
  const CustomTapBarMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 145.h,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.lightPrimaryColor),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  "Month",
                  style: AppTextStyle.semiBold14.copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: AppColor.primaryColor,
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.arrow_back_ios_new, color: AppColor.primaryColor),
              Expanded(child: CustomTapBar(tabs: TabBarDateWithDoctorList)),
              Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
