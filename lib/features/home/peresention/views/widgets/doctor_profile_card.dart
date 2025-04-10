import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_and_title.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/home/peresention/data/model/card_doctor_model.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';
import 'package:medical_app/features/home/peresention/views/widgets/name_and_title_doctor.dart';

class DoctorProfileCard extends StatelessWidget {
  final CardDoctorModel doctor;

  const DoctorProfileCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.lightPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            DoctorImage(image: doctor.image),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DoctorNameAndJob(name: doctor.name, jobTitle: doctor.job),
                  const SizedBox(height: 5),
                  Row(
                    spacing: 10,
                    children: [
                      CustomIconAndTitle(
                        title: "${doctor.rating}",
                        icon: doctor.isRating.icon!,
                      ),
                      CustomIconAndTitle(
                        title: "${doctor.numMessage}",
                        icon: FontAwesomeIcons.commentDots,
                      ),
                      Spacer(),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: doctor.questions!,
                        color: Colors.white,
                        colorIcon: AppColor.primaryColor,
                      ),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: doctor.isFavorite,
                        color: Colors.white,
                        colorIcon: AppColor.primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
