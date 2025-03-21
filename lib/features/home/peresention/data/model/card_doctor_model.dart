import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/helper_functions/model_doctor.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';

class CardDoctorModel extends DoctorInfoDataModel {
  final Icon isRating;
  final int numMessage;
  final double rating;

  CardDoctorModel({
    required super.image,
    required super.name,
    required super.job,
    required super.questions,
    required super.isFavorite,
    required this.isRating,
    required this.numMessage,
    required this.rating,
  });
}

List<CardDoctorModel> listCardModel = [
  CardDoctorModel(
    isRating: Icon(Icons.star, color: AppColor.primaryColor),
    numMessage: 60,
    image: AppImages.assetsImagesDrOlivia,
    name: "Dr. Olivia Turner , M.D",
    job: "Dermot-Endocrinology",
    rating: 5,
    isFavorite: Icons.favorite,
    questions: FontAwesomeIcons.question,
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),

    numMessage: 40,
    image: AppImages.assetsImagesDrAlexander,
    name: "Dr. Alexander Bennett, Ph.D.",
    job: "Dermato-Genetics",
    rating: 4.5,
    isFavorite: Icons.favorite_border_outlined,
    questions: FontAwesomeIcons.question,
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),
    numMessage: 150,
    image: AppImages.assetsImagesDrSophia,
    name: "Dr. Sophia Martinez, Ph.D.",
    job: "Cosmetic Bioengineering",
    rating: 5,
    isFavorite: Icons.favorite_border_outlined,
    questions: FontAwesomeIcons.question,
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),
    numMessage: 90,
    image: AppImages.assetsImagesDrMechial,
    name: "Dr. Michael Davidson, M.D.",
    job: "Nano-Dermatology",
    rating: 4.8,
    isFavorite: Icons.favorite,
    questions: FontAwesomeIcons.question,
  ),
];
