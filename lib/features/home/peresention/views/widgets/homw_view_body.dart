import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_home_app_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/dates_item_doctor.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            const CustomHomeAppBar(),
            const SizedBox(height: 15),
            const DatesItemDoctor(),
            const SizedBox(height: 15),
            DoctorListView(),
          ],
        ),
      ),
    );
  }
}
