import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/menu_icons_sort_by.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/custom_widget_section.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/list_item_doctor_favorite.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Column(
          children: [
            MenuIconsForSortBy(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTitleSection(
                  title: 'Doctors',
                  color: Colors.white,
                  containerColor: AppColor.primaryColor,
                ),
                CustomTitleSection(
                  title: 'Services',
                  containerColor: AppColor.lightPrimaryColor,
                  color: AppColor.primaryColor,
                ),
              ],
            ),

            ListItemDoctorFavorite(),
          ],
        ),
      ),
    );
  }
}
