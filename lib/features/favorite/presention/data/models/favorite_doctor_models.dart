import 'package:flutter/material.dart';
import 'package:medical_app/core/helper_functions/model_doctor.dart';
import 'package:medical_app/core/utils/app_images.dart';

class FavoriteDoctorModels extends DoctorInfoDataModel {
  FavoriteDoctorModels({
    required super.image,
    required super.name,
    required super.job,
    required super.isFavorite,
    super.questions,
  });
}

List<FavoriteDoctorModels> listFavoriteDoctorModels = [
  FavoriteDoctorModels(
    image: AppImages.assetsImagesDrAlexander,
    name: "Dr. Alexander Bennett, Ph.D.",
    job: "Dermato-Genetics",
    isFavorite: Icons.favorite,
  ),

  FavoriteDoctorModels(
    image: AppImages.assetsImagesDrMicheal,
    name: "Dr. Michael Davidson, M.D",
    job: "Solar Dermatology",
    isFavorite: Icons.favorite,
  ),

  FavoriteDoctorModels(
    image: AppImages.assetsImagesDrOlivia,
    name: "Dr. Olivia Turner , M.D",
    job: "Dermot-Endocrinology",
    isFavorite: Icons.favorite,
  ),

  FavoriteDoctorModels(
    image: AppImages.assetsImagesDrSophia,
    name: "Dr. Sophia Martinez, Ph.D.",
    job: "Cosmetic Bioengineering",
    isFavorite: Icons.favorite,
  ),
];
