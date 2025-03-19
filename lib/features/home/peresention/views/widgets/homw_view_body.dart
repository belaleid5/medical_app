import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_home_app_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/dates_item_doctor.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 15,
        children: [CustomHomeAppBar(), DatesItemDoctor()],
      ),
    );
  }
}
