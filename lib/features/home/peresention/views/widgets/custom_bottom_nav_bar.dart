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
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: colorIconSelect ?? Colors.white),
              label: ' ',
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
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
