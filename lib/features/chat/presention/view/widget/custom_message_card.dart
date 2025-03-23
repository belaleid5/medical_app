import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class CustomMessageCard extends StatelessWidget {
  const CustomMessageCard({
    super.key,
    required this.bottomLeft,
    required this.bottomRight,
    required this.alignment,
    required this.title,
    this.color,
  });

  final Radius bottomLeft;
  final Radius bottomRight;
  final AlignmentGeometry alignment;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: 202,
          decoration: BoxDecoration(
            color: color ?? AppColor.lightSecondryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: bottomLeft,
              bottomRight: bottomRight,
            ),
          ),
          child: Text(
            title,
            style: AppTextStyle.semiBold12.copyWith(
              fontWeight: FontWeight.w200,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ),
    );
  }
}
