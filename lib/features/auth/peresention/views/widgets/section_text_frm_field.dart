import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/cusom_text_form_field.dart';
import 'package:medical_app/features/auth/peresention/views/lgoin/component/forget_passowrd.dart';
import 'package:medical_app/core/widgets/form_title.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/custom_passowrrd_form_field.dart';

class SectionTextFormField extends StatelessWidget {
  const SectionTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormTitle(title: "Email Or Mopile Number"),
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          hint: "example@example.com",
        ),
        FormTitle(title: "Password"),
        CustomPasswordFormField(),
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
