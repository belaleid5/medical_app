import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColor.primaryColor,
      items: [],
    );
  }
}
