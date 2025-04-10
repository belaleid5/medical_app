import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/cusom_text_form_field.dart';
import 'package:medical_app/core/widgets/form_title.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_boder_radius_widget.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_patient_details_title.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_select_gender.dart';

class CustomPatientDetails extends StatelessWidget {
  const CustomPatientDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          CustomPatientDetailsTitle(),
          Row(
            spacing: 8,
            children: [
              CustomBorderRadiusWidget(
                title: "yourself",
                backColor: Colors.white,
                titleColor: AppColor.primaryColor,
              ),
              CustomBorderRadiusWidget(
                title: "another person",
                backColor: AppColor.primaryColor,
                titleColor: Colors.white,
              ),
            ],
          ),
          FormTitle(title: "Full Name"),
          CustomTextFormField(
            keyboardType: TextInputType.text,
            hint: "Jane Doe",
          ),
          FormTitle(title: "Age"),
          CustomTextFormField(keyboardType: TextInputType.number, hint: "30"),
          CustomSelectGender(),
        ],
      ),
    );
  }
}
