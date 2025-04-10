import 'package:flutter/material.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/build_app_bar_date_with_doctor.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom%20_list_available_time_widget.dart';
import 'package:medical_app/core/widgets/custom_divider.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_patient_detalis.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/custom_tab_bar_month.dart';
import 'package:medical_app/features/date_with_doctor/presentaion/views/widgets/description_problems.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';

class DateWithDoctorView extends StatelessWidget {
  const DateWithDoctorView({super.key});
  static const routeName = "DateWithDoctorView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarDAteWithDoctor(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTapBarMonth(),
            CustomAvailableTimeListWidget(
              timeSlots: times,
              initialSelectedTime: "10:00 AM",
              onTimeSelected: (selectedTime) {
                print("Selected time: $selectedTime");
              },
            ),
            CustomDivider(),
            CustomPatientDetails(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CustomDivider(),
            ),
            DescriptionProblems(),
          ],
        ),
      ),
    );
  }
}
