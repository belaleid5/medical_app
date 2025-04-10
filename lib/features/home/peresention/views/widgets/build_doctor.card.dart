import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/views/widgets/build_action_button.dart';
import 'package:medical_app/features/home/peresention/views/widgets/build_doctor_details.dart';

class BuildDoctorCard extends StatelessWidget {
  const BuildDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.scaleHeight * 51,
      width: context.scaleHeight * 203,
      child: Card(
        color: AppColor.lightPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [BuildDoctorDetails(), BuildActionButtons()],
          ),
        ),
      ),
    );
  }
}
