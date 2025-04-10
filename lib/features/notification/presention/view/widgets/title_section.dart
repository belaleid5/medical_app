import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_widget_section.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTitleSection(
            title: 'Today',
            color: AppColor.primaryColor,
            containerColor: AppColor.lightPrimaryColor,
          ),

          Text(
            "Mark All",
            style: AppTextStyle.semiBold24Weight600.copyWith(
              color: AppColor.primaryColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
