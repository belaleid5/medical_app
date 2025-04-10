import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/favorite/presention/data/models/favorite_doctor_models.dart';

class CardWhiteForInfo extends StatelessWidget {
  const CardWhiteForInfo({super.key, required this.favoriteDoctorModels});

  final FavoriteDoctorModels favoriteDoctorModels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 5,
          children: [
            Column(
              children: [
                Text(
                  favoriteDoctorModels.name,
                  style: AppTextStyle.semiBold15Weight500.copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
                Text(
                  favoriteDoctorModels.job,
                  style: AppTextStyle.semiBold12Weight300,
                ),
              ],
            ),

            Icon(Icons.favorite, color: AppColor.primaryColor, size: 20),
          ],
        ),
      ),
    );
  }
}
