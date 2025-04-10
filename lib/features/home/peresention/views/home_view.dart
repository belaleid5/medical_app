import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/homw_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routName = "home_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
