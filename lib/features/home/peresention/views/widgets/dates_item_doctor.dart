import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_card_doctor.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_tab_bar.dart';

class DatesItemDoctor extends StatelessWidget {
  const DatesItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeProvider(
      baseSize: Size(360, 230),
      height: context.setMinSize(360),
      width: context.setMinSize(230),
      child: Container(
        color: AppColor.lightPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomTapBar(), CustomItemCardDateADoctor()],
        ),
      ),
    );
  }
}
