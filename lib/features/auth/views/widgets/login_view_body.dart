import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_app_bar.dart';
import 'package:medical_app/features/auth/views/widgets/don%60t_have_an_account.dart';
import 'package:medical_app/features/auth/views/widgets/or_signup_section.dart';
import 'package:medical_app/features/auth/views/widgets/section_auth_social.dart'
    show SectionAuthSocial;
import 'package:medical_app/features/auth/views/widgets/section_text_frm_field.dart';
import 'package:medical_app/features/auth/views/widgets/welcome_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar(title: "Log In")),
            SliverToBoxAdapter(child: WelcomeSection()),
            SliverToBoxAdapter(child: SectionTextFormField()),
            SliverToBoxAdapter(child: OrSignUp()),
            SliverToBoxAdapter(child: SectionAuthSocial()),
            SliverToBoxAdapter(
              child: HaveOrDontHAveAnAcount(
                firstTitle: 'Don\'t have an account?',
                secondTitle: "Sign Up",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
