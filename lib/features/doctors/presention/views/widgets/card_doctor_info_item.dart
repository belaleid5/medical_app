import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/doctors/presention/data/model/doctors_model_data_card.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';

class CardDoctorInfoItem extends StatelessWidget {
  const CardDoctorInfoItem({super.key, required this.modelCard});
  final DoctorsModelDataCardInfoModel modelCard;

  @override
  Widget build(BuildContext context) {
    return SizeProvider(
      baseSize: Size(131, 300),
      height: context.setMinSize(131),
      width: context.setMinSize(300),
      child: Container(
        height: context.setHeight(131),
        decoration: BoxDecoration(
          color: AppColor.lightPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: DoctorImage(image: modelCard.image),
      ),
    );
  }
}
