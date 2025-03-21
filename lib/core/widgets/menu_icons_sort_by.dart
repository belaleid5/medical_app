import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/a_to_z.dart';
import 'package:medical_app/core/widgets/image_icon_avatar.dart';

class MenuIconsForSortBy extends StatelessWidget {
  const MenuIconsForSortBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text("Sort By", style: AppTextStyle.semiBold12Weight300),

        AToZ(),
        ImageIconAvatar(image: AppImages.assetsImagesFavoriteIcon),
        ImageIconAvatar(image: AppImages.assetsImagesStarIcon),
        ImageIconAvatar(image: AppImages.assetsImagesFemaleIcon),
        ImageIconAvatar(image: AppImages.assetsImagesMaleIcon),
      ],
    );
  }
}
