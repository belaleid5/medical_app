import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/favorite/presention/data/models/favorite_doctor_models.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/card_white_info.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/make_appointment_widget.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/professionalSection.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';

class CardFavoriteDoctorItem extends StatelessWidget {
  const CardFavoriteDoctorItem({super.key, required this.favoriteDoctorModels});
  final FavoriteDoctorModels favoriteDoctorModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizeProvider(
        baseSize: Size(108, 300),
        height: context.setMinSize(108),
        width: context.setMinSize(300),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: context.setHeight(131),
          decoration: BoxDecoration(
            color: AppColor.lightPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomProfessionalSection(),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DoctorImage(
                    image: favoriteDoctorModels.image,
                    radiusImage: 35,
                  ),
                  CardWhiteForInfo(favoriteDoctorModels: favoriteDoctorModels),
                ],
              ),
              MakeAppointmentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
