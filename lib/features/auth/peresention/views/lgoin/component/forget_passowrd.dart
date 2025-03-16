import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/auth/peresention/views/confrim_password/confirm_passowrd_view.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, ConfirmPassowrdView.route);
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Forget Password",
          style: AppTextStyle.semiBold12.copyWith(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
