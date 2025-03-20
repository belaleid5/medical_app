import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.number,
    required this.month,
    required this.color,
  });
  final String number, month;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 0.2),
        borderRadius: BorderRadius.circular(32),
      ),
      duration: Duration(microseconds: 600),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: number, style: AppTextStyle.semiBold24),
            TextSpan(text: '\n$month', style: AppTextStyle.semiBold12Weight300),
          ],
        ),
      ),
    );
  }
}
