import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/build_app_bar_appointment_view.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/your_appointment_view_body.dart';

class YourAppointmentView extends StatelessWidget {
  const YourAppointmentView({super.key});
  static const routeName = "YourAppointment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBarYourAppointmentView(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: YourAppointmentViewBody(),
    );
  }

  
}
