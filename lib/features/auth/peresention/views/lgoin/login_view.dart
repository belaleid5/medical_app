import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/peresention/views/lgoin/component/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginViewBody());
  }
}
