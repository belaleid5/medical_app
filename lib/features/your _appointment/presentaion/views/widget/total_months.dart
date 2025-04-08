import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_boder_radius_widget.dart';

class TotalMonths extends StatelessWidget {
  const TotalMonths({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        spacing: 5,
        children: [
          Column(
            spacing: 5.h,
            children: [
              CustomBorderRadiusWidget(
                title: "Month 24, Year",
                backColor: AppColor.primaryColor,
                titleColor: Colors.white,
              ),
              Text(
                "Wed, 10:00 AM ",
                style: AppTextStyle.semiBold14.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomIconAvatar(
            icon: FontAwesomeIcons.check,
            colorIcon: Colors.white,
            sizeIcon: 18,
            radius: 16,
            color: AppColor.primaryColor,
          ),

          CustomIconAvatar(
            icon: FontAwesomeIcons.xmark,
            colorIcon: Colors.white,
            sizeIcon: 18,
            radius: 16,
            color: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
