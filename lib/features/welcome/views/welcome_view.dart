import 'package:flutter/material.dart';
import 'package:medical_app/features/welcome/views/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const String routeName = "welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: WelcomeViewBody());
  }
}
