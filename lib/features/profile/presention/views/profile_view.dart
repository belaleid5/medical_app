import 'package:flutter/material.dart';
import 'package:medical_app/features/profile/presention/views/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const routeName = 'profile_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProfileViewBody());
  }
}
