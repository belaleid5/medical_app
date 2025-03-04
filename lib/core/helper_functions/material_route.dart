import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/views/screens/confirm_passowrd_view.dart';
import 'package:medical_app/features/auth/views/screens/login_view.dart';
import 'package:medical_app/features/auth/views/screens/sign_up_view.dart';
import 'package:medical_app/features/home/features/peresention/views/home_view.dart';
import 'package:medical_app/features/spalsh/views/splash_view.dart';
import 'package:medical_app/features/welcome/views/welcome_view.dart';

MaterialPageRoute onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routName:
      return MaterialPageRoute(builder: (_) => SplashView());
    case WelcomeView.routeName:
      return MaterialPageRoute(builder: (_) => WelcomeView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => SignUpView());

    case ConfirmPassowrdView.route:
      return MaterialPageRoute(builder: (_) => ConfirmPassowrdView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => HomeView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
