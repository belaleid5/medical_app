import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/models/tab_bar_model.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_card_doctor.dart';
import 'package:medical_app/core/widgets/custom_tab_bar_list.dart';

class DatesItemDoctor extends StatelessWidget {
  const DatesItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.h,
      width: 230.w,
      color: AppColor.lightPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTapBar(tabs: TabBarModelList),
          CustomItemCardDateADoctor(),
        ],
      ),
    );
  }
}
