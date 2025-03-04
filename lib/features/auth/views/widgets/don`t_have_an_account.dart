import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/utils/app_color.dart';

class HaveOrDontHAveAnAcount extends StatelessWidget {
  const HaveOrDontHAveAnAcount({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.onTap,
  });

  final String firstTitle, secondTitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstTitle,
              style: AppTextStyle.semiBold12.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),

            GestureDetector(
              onTap: onTap,
              child: Text(
                secondTitle,
                style: AppTextStyle.semiBold12.copyWith(
                  fontWeight: FontWeight.w300,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
