import 'package:flutter/material.dart';
import 'package:medical_app/core/helper_functions/build_app_ba.dart';
import 'package:medical_app/features/doctors/presention/views/widgets/doctor_view_body.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: DoctorsViewBody());
  }
}
