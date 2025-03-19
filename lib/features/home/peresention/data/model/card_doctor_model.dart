import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';

class CardDoctorModel {
  final String image;
  final String name;
  final String job;
  final double rating;
  final Icon isRating;
  final Icon isFavorite;
  final int numMessage;

  CardDoctorModel({
    required this.image,
    required this.name,
    required this.job,
    required this.rating,
    required this.isFavorite,
    required this.numMessage,
    required this.isRating,
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
    isFavorite: Icon(Icons.favorite, color: AppColor.primaryColor),
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),

    numMessage: 40,
    image: AppImages.assetsImagesDrAlexander,
    name: "Dr. Alexander Bennett, Ph.D.",
    job: "Dermato-Genetics",
    rating: 4.5,
    isFavorite: Icon(Icons.favorite_border_outlined),
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),
    numMessage: 150,
    image: AppImages.assetsImagesDrSophia,
    name: "Dr. Sophia Martinez, Ph.D.",
    job: "Cosmetic Bioengineering",
    rating: 5,
    isFavorite: Icon(Icons.favorite_border_outlined),
  ),

  CardDoctorModel(
    isRating: Icon(Icons.star_border_outlined, color: AppColor.primaryColor),
    numMessage: 90,
    image: AppImages.assetsImagesDrMichel,
    name: "Dr. Michael Davidson, M.D.",
    job: "Nano-Dermatology",
    rating: 4.8,
    isFavorite: Icon(Icons.favorite, color: AppColor.primaryColor),
  ),
];
