import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class ItemCardNotification extends StatelessWidget {
  const ItemCardNotification({
    super.key,

    required this.icon,
    required this.title,
    required this.supTitle,
    required this.date,
  });

  final IconData icon;
  final String title;
  final String supTitle;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
      child: ListTile(
        leading: CircleAvatar(
          radius: 22,
          backgroundColor: AppColor.primaryColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(supTitle),
        trailing: Text(date),
      ),
    );
  }
}
