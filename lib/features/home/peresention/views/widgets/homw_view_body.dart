import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_home_app_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_tab_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 15,
        children: [
          CustomHomeAppBar(),
          Container(
            color: AppColor.lightPrimaryColor,
            height: 230,
            child: Column(
              children: [CustomTapBar(), Card(color: Colors.white)],
            ),
          ),
        ],
      ),
    );
  }
}
