import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/views/widgets/confrim_pass_view_body.dart';

class ConfirmPassowrdView extends StatelessWidget {
  const ConfirmPassowrdView({super.key});
  static const String route = "confrim_pass";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ConfirmPassowrdViewBody(),
    );
  }
}
