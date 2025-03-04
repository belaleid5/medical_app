import 'package:flutter/material.dart';
import 'package:medical_app/constant.dart';
import 'package:medical_app/core/services/shared_pref.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/custom_logo_screen.dart';
import 'package:medical_app/core/widgets/sup_title_message_sceen.dart';
import 'package:medical_app/features/auth/views/screens/login_view.dart';
import 'package:medical_app/features/auth/views/screens/sign_up_view.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomLogo(
          imageLogo: AppImages.logoWelcomeScreen,
          colorTitle: AppColor.primaryColor,
          colorSupTitle: AppColor.primaryColor,
        ),
        SizedBox(height: 84),
        SupTitleMessage(
          supTitle:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et dolore\n magna aliqua. ",
        ),
        SizedBox(height: 16),
        CustomButton(
          title: 'Log In',
          buttonTitleColor: Colors.white,
          buttonColor: AppColor.primaryColor,
          onPressed: () {
            Prefs.setBool(kIsSplashView, true);
            Navigator.pushNamed(context, LoginView.routeName);
          },
        ),
        SizedBox(height: 7),
        CustomButton(
          onPressed: () {
            Prefs.setBool(kIsSplashView, true);
            Navigator.pushNamed(context, SignUpView.routeName);
          },
          title: 'Sign Up',
          buttonTitleColor: AppColor.primaryColor,
          buttonColor: AppColor.secondaryColor,
        ),
      ],
    );
  }
}
