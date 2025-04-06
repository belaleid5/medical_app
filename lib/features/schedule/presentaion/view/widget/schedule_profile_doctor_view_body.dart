import 'package:flutter/material.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/card_day_of_month.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/card_inf_doctor.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/text_profile_doctor.dart';

class ScheduleProfileDoctorViewBody extends StatelessWidget {
  ScheduleProfileDoctorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [CardInfoDoctor(), TextProfileDoctor(), CardDayOfMonth()],
      ),
    );
  }
}
