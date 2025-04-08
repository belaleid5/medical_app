import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_and_title.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/core/widgets/item_card_profile_doctor.dart';
import 'package:medical_app/features/home/peresention/data/model/card_doctor_model.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';
import 'package:medical_app/features/home/peresention/views/widgets/name_and_title_doctor.dart';

class DoctorProfileCard extends StatelessWidget {
  final CardDoctorModel doctor;

  const DoctorProfileCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return ItemCardProfileDoctor(
      image: doctor.image,
      rating: "${doctor.rating}",
      numMessage: "${doctor.numMessage}",
      ratingIcon: doctor.isRating.icon!,
      favoriteIcon: doctor.isFavorite,
      questions: doctor.questions!,
      commentDots: FontAwesomeIcons.commentDots,
    );
  }
}
