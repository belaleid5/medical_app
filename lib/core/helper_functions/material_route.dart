import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/peresention/views/confrim_password/confirm_passowrd_view.dart';
import 'package:medical_app/features/auth/peresention/views/lgoin/login_view.dart';
import 'package:medical_app/features/auth/peresention/views/sign_up/sing_up_view.dart';
import 'package:medical_app/features/chat/presention/view/chat_view.dart';
import 'package:medical_app/features/doctors/presention/views/doctors_view.dart';
import 'package:medical_app/features/favorite/presention/views/favorite_view.dart';
import 'package:medical_app/features/home/peresention/views/home_view.dart';
import 'package:medical_app/features/notification/presention/view/notification_view.dart';
import 'package:medical_app/features/profile/presention/views/profile_view.dart';
import 'package:medical_app/features/spalsh/peresention/views/splash_view.dart';
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

    case HomeView.routName:
      return MaterialPageRoute(builder: (_) => HomeView());

    case DoctorsView.routName:
      return MaterialPageRoute(builder: (_) => DoctorsView());

    case FavoriteView.routeName:
      return MaterialPageRoute(builder: (_) => FavoriteView());

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (_) => ProfileView());

    case NotificationView.routeName:
      return MaterialPageRoute(builder: (_) => NotificationView());

    case ChatView.routeName:
      return MaterialPageRoute(builder: (_) => ChatView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
