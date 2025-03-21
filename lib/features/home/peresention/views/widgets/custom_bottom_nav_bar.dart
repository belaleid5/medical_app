import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, this.colorIconSelect});
  final Color? colorIconSelect;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          backgroundColor: AppColor.primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: colorIconSelect ?? Colors.white),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment),
              label: ' ',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ' '),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: ' ',
            ),
          ],
        ),
      ),
    );
  }
}
