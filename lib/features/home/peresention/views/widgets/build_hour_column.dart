import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/hour_text.dart';

class BuildHourColumn extends StatelessWidget {
  const BuildHourColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 11,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(height: 3),
        HourText(title: "9 AM"),
        HourText(title: "10 AM"),
        HourText(title: "11 AM"),
        HourText(title: "12 AM"),
      ],
    );
  }
}
