import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/peresention/views/sign_up/component/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignUpViewBody());
  }
}
