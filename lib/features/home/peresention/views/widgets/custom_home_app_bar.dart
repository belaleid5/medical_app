import 'package:flutter/material.dart';
import 'package:medical_app/features/home/peresention/views/widgets/first_header_app_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/second_header_app_bar.dart.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        spacing: 23,
        children: [FirstHeaderAppBar(), SecondHeaderAppBar()],
      ),
    );
  }
}
