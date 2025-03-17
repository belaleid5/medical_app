import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_icon_go%20_to%20_page.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_search_bar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_title_icon_go_to_page.dart';

class SecondHeaderAppBar extends StatelessWidget {
  const SecondHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 23,
      children: [
        Column(
          children: [
            CustomIconGoToPage(iconImage: AppImages.assetsImagesStethoscope),
            CustomTitleIconGotToPage(title: "Doctor"),
          ],
        ),
        Column(
          children: [
            CustomIconGoToPage(iconImage: AppImages.assetsImagesFavorite),
            CustomTitleIconGotToPage(title: "Favorite"),
          ],
        ),
        Spacer(),
        CustomSearchBar(),
      ],
    );
  }
}
