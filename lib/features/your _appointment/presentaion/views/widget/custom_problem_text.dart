import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomProblemText extends StatelessWidget {
  const CustomProblemText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        textAlign: TextAlign.start,
        "Problem\n\nLorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam, quis\n nostrud exercitation ullamco laboris nisi ut aliquip ex\n ea commodo consequat.",
        style: AppTextStyle.semiBold12Weight300,
      ),
    );
  }
}
