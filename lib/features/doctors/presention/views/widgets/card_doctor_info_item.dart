import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/doctors/presention/data/model/doctors_model_data_card.dart';
import 'package:medical_app/features/doctors/presention/views/widgets/menu_icons.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';

class CardDoctorInfoItem extends StatelessWidget {
  const CardDoctorInfoItem({super.key, required this.modelCard});
  final DoctorsModelDataCardInfoModel modelCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizeProvider(
        baseSize: Size(131, 300),
        height: context.setMinSize(131),
        width: context.setMinSize(300),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: context.setHeight(131),
          decoration: BoxDecoration(
            color: AppColor.lightPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            spacing: 10,

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DoctorImage(image: modelCard.image, radiusImage: 35),
              Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    modelCard.name,
                    style: AppTextStyle.semiBold15Weight500.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Text(modelCard.job, style: AppTextStyle.semiBold12Weight300),
                  MenuIcons(modelCard: modelCard),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
