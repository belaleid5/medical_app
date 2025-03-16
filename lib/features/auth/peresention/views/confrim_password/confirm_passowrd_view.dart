import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/peresention/views/confrim_password/component/confrim_pass_view_body.dart';

class ConfirmPassowrdView extends StatelessWidget {
  const ConfirmPassowrdView({super.key});
  static const String route = "confrim_pass";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ConfirmPassowrdViewBody());
  }
}
