import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/features/home/peresention/views/widgets/build_hour_column.dart';
import 'biuld_doctor_info.dart';

class CustomItemCardDateADoctor extends StatelessWidget {
  const CustomItemCardDateADoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: context.scaleHeight * 123,
        width: context.scaleHeight * 299,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [BuildHourColumn(), BuildDoctorInfo()],
        ),
      ),
    );
  }
}
