import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/biuld_doctor_info.dart';
import 'package:medical_app/features/home/peresention/views/widgets/build_hour_column.dart';
import 'package:medical_app/features/home/peresention/views/widgets/hour_text.dart';

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
