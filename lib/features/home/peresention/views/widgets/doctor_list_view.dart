import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/data/model/card_doctor_model.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_profile_card.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listCardModel.length,
      itemBuilder: (context, index) {
        return DoctorProfileCard(doctor: listCardModel[index]);
      },
    );
  }
}
