import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/build_app_bar_shedule.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/schedule_profile_doctor_view_body.dart';

class ScheduleProfileDoctorView extends StatelessWidget {
  const ScheduleProfileDoctorView({super.key});
  static const routName = 'ScheduleProfileDoctorView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: buildAppBarScheduel(),
      body: ScheduleProfileDoctorViewBody(),
    );
  }
}
