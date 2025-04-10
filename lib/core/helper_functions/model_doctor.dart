import 'package:flutter/material.dart';

abstract class DoctorInfoDataModel {
  final String image;
  final String name;
  final String job;
  IconData? questions;
  final IconData? questions;
  final IconData isFavorite;

  DoctorInfoDataModel({
    required this.image,
    required this.name,
    required this.job,
    this.questions,
    required this.isFavorite,
  });
}
