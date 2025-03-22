import 'package:flutter/material.dart' show IconData, Icons;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationModelDataliesModel {
  final IconData icon;
  final String title;
  final String supTitle;
  final String date;

  NotificationModelDataliesModel({
    required this.icon,
    required this.title,
    required this.supTitle,
    required this.date,
  });
}

List<NotificationModelDataliesModel> ListNotificationModelDatalies = [
  NotificationModelDataliesModel(
    icon: FontAwesomeIcons.calendar,
    title: "scheduled appointment",
    supTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    date: "2 M",
  ),

  NotificationModelDataliesModel(
    icon: FontAwesomeIcons.calendar,
    title: "scheduled Change",
    supTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    date: "2 H",
  ),

  NotificationModelDataliesModel(
    icon: FontAwesomeIcons.calendar,
    title: "medical notes",
    supTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    date: "2 H",
  ),
];
