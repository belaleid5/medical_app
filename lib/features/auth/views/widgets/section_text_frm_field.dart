import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/features/auth/views/widgets/cusom_text_form_field.dart';
import 'package:medical_app/features/auth/views/widgets/forget_passowrd.dart';
import 'package:medical_app/features/auth/views/widgets/form_title.dart';

class SectionTextFormField extends StatelessWidget {
  const SectionTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormTitle(title: "Email Or Mopile Number"),
        SizedBox(height: 12),
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          hint: "example@example.com",
        ),
        SizedBox(height: 20),
        FormTitle(title: "Password"),
        SizedBox(height: 12),
        CustomTextFormField(
          icon: Icons.visibility_off,
          keyboardType: TextInputType.visiblePassword,
          hint: "***************",
        ),
        SizedBox(height: 7),
        ForgetPassword(),
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            title: 'Log In',
            buttonTitleColor: Colors.white,
            buttonColor: AppColor.primaryColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
