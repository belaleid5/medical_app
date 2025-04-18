import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_app_bar.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/don%60t_have_an_account.dart';
import 'package:medical_app/features/auth/peresention/views/lgoin/component/or_signup_section.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/section_auth_social.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/section_from_data.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar(title: "New Account")),
            SliverToBoxAdapter(child: SectionFormData()),
            SliverToBoxAdapter(child: OrSignUp()),
            SliverToBoxAdapter(child: SectionAuthSocial()),
            SliverToBoxAdapter(
              child: HaveOrDontHAveAnAcount(
                firstTitle: "already have an account?",
                secondTitle: "Log In",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
