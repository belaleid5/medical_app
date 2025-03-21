import 'package:flutter/material.dart';

abstract class DoctorInfoDataModel {
  final String image;
  final String name;
  final String job;
  IconData? questions;
  final IconData isFavorite;

  DoctorInfoDataModel({
    required this.image,
    required this.name,
    required this.job,
    required this.questions,
    required this.isFavorite,
  });
}
