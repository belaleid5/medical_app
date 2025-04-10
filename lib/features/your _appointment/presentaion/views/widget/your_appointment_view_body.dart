import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/card_details_doctor.dart';
import 'package:medical_app/core/widgets/custom_divider.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/custom_person_data.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/custom_problem_text.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/total_months.dart';

class YourAppointmentViewBody extends StatelessWidget {
  const YourAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CardDetailsDoctor(),
          CustomDivider(),
          TotalMonths(),
          CustomDivider(),
          CustomPersonData(),
          CustomDivider(),
          SizedBox(height: 15),
          CustomProblemText(),
        ],
      ),
    );
  }
}

