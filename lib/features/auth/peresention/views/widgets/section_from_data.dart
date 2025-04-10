import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/cusom_text_form_field.dart';
import 'package:medical_app/core/widgets/data_of_birth.dart';
import 'package:medical_app/core/widgets/form_title.dart';
import 'package:medical_app/features/auth/peresention/views/sign_up/component/term_use_privacy.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/custom_passowrrd_form_field.dart';

class SectionFormData extends StatelessWidget {
  const SectionFormData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        FormTitle(title: "Full Name"),
        SizedBox(height: 5),
        CustomTextFormField(
          keyboardType: TextInputType.name,
          hint: "Full Name",
        ),

        SizedBox(height: 12),
        FormTitle(title: "Email"),
        SizedBox(height: 5),
        CustomTextFormField(
          keyboardType: TextInputType.name,
          hint: "example@gmail.com",
        ),

        SizedBox(height: 12),

        FormTitle(title: "Password"),
        SizedBox(height: 5),
        CustomPasswordFormField(),

        SizedBox(height: 12),
        FormTitle(title: "Mobile Number"),
        SizedBox(height: 5),
        CustomTextFormField(
          keyboardType: TextInputType.name,
          hint: "+20*********",
        ),

        SizedBox(height: 12),
        FormTitle(title: "Date of Birth"),
        SizedBox(height: 5),
        DataOfBirth(),
        SizedBox(height: 16),
        Align(alignment: Alignment.center, child: TermsUsePrivacy()),
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            title: "Sign Up",
            buttonTitleColor: Colors.white,
            buttonColor: AppColor.primaryColor,
            onPressed: () {},
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
