import 'package:flutter/material.dart';
import 'package:medical_app/constant.dart';
import 'package:medical_app/core/services/shared_pref.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/widgets/custom_logo_screen.dart';
import 'package:medical_app/features/auth/views/screens/login_view.dart';
import 'package:medical_app/features/welcome/views/welcome_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavgation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomLogo(
      imageLogo: AppImages.logoSplashScreen,
      colorTitle: Colors.white,
      colorSupTitle: Colors.white,
    );
  }

  void excuteNavgation() {
    bool isSplashView = Prefs.getBool(kIsSplashView);
    Future.delayed(Duration(seconds: 3), () {
      if (isSplashView) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, WelcomeView.routeName);
      }
    });
  }
}
