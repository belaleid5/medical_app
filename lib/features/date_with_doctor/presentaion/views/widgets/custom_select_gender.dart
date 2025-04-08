import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/form_title.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_boder_radius_widget.dart';

class CustomSelectGender extends StatelessWidget {
  const CustomSelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormTitle(title: "Gender"),
        Row(
          spacing: 5,
          children: [
            CustomBorderRadiusWidget(
              title: "Male",
              backColor: Colors.white,
              titleColor: AppColor.primaryColor,
            ),
            CustomBorderRadiusWidget(
              title: "FeMale",
              backColor: AppColor.primaryColor,
              titleColor: Colors.white,
            ),

            CustomBorderRadiusWidget(
              title: "Other",
              backColor: Colors.white,
              titleColor: AppColor.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
