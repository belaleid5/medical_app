import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/helper_functions/model_doctor.dart';
import 'package:medical_app/core/utils/app_images.dart';

class DoctorsModelDataCardInfoModel extends DoctorInfoDataModel {
  final String info;
  final IconData iconCalender, iconExclamation;

  DoctorsModelDataCardInfoModel({
    required super.image,
    required this.iconExclamation,
    required this.iconCalender,
    required this.info,
    required super.name,
    required super.job,
    required super.questions,
    required super.isFavorite,
  });
}

List<DoctorsModelDataCardInfoModel> listDoctorsModelDataCardInfo = [
  DoctorsModelDataCardInfoModel(
    iconExclamation: FontAwesomeIcons.exclamation,
    iconCalender: FontAwesomeIcons.calendar,
    info: "Info",
    image: AppImages.assetsImagesDrAlexander,
    name: "Dr. Alexander Bennett, Ph.D.",
    job: "Dermato-Genetics",
    questions: FontAwesomeIcons.question,
    isFavorite: Icons.favorite,
  ),

  DoctorsModelDataCardInfoModel(
    iconExclamation: FontAwesomeIcons.exclamation,
    iconCalender: FontAwesomeIcons.calendar,
    info: "Info",
    image: AppImages.assetsImagesDrMechial,
    name: "Dr. Michael Davidson, M.D",
    job: "Solar Dermatology",
    questions: FontAwesomeIcons.question,
    isFavorite: Icons.favorite,
  ),

  DoctorsModelDataCardInfoModel(
    iconExclamation: FontAwesomeIcons.exclamation,
    iconCalender: FontAwesomeIcons.calendar,
    info: "Info",
    image: AppImages.assetsImagesDrOlivia,
    name: "Dr. Olivia Turner , M.D",
    job: "Dermot-Endocrinology",
    questions: FontAwesomeIcons.question,
    isFavorite: Icons.favorite,
  ),

  DoctorsModelDataCardInfoModel(
    iconExclamation: FontAwesomeIcons.exclamation,
    iconCalender: FontAwesomeIcons.calendar,
    info: "60",
    image: AppImages.assetsImagesDrSophia,
    name: "Dr. Sophia Martinez, Ph.D.",
    job: "Cosmetic Bioengineering",
    questions: FontAwesomeIcons.question,
    isFavorite: Icons.favorite,
  ),
];
