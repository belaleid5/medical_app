import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/doctors/presention/data/model/doctors_model_data_card.dart';

class CustomWidgetInfo extends StatelessWidget {
  const CustomWidgetInfo({super.key, required this.modelCard});

  final DoctorsModelDataCardInfoModel modelCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8.2),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        modelCard.info,
        style: AppTextStyle.semiBold12.copyWith(color: Colors.white),
      ),
    );
  }
}
