import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/home/peresention/data/model/card_doctor_model.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_home_app_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/dates_item_doctor.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_list_view.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_profile_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomHomeAppBar(),
          const SizedBox(height: 15),
          const DatesItemDoctor(),
          const SizedBox(height: 15),
          const Expanded(child: DoctorListView()),
        ],
      ),
    );
  }
}
