import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/doctors/presention/data/model/doctors_model_data_card.dart';
import 'package:medical_app/features/doctors/presention/views/widgets/custom_widget_info.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({super.key, required this.modelCard});

  final DoctorsModelDataCardInfoModel modelCard;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CustomWidgetInfo(modelCard: modelCard),
        SizedBox(width: 10),
        CustomIconAvatar(
          radius: 18,
          sizeIcon: 16,
          icon: modelCard.iconCalender,
          colorIcon: AppColor.primaryColor,
          color: Colors.white,
        ),

        CustomIconAvatar(
          radius: 18,
          sizeIcon: 16,
          icon: modelCard.iconExclamation,
          colorIcon: AppColor.primaryColor,
          color: Colors.white,
        ),

        CustomIconAvatar(
          radius: 18,
          sizeIcon: 16,
          icon: modelCard.questions,
          colorIcon: AppColor.primaryColor,
          color: Colors.white,
        ),

        CustomIconAvatar(
          radius: 18,
          sizeIcon: 16,
          icon: modelCard.isFavorite,
          colorIcon: AppColor.primaryColor,
          color: Colors.white,
        ),
      ],
    );
  }
}
