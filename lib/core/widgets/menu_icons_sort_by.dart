import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/a_to_z.dart';
import 'package:medical_app/core/widgets/image_icon_avatar.dart';

class MenuIconsForSortBy extends StatelessWidget {
  const MenuIconsForSortBy({super.key, or});
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text("Sort By", style: AppTextStyle.semiBold12Weight300),

        AToZ(),
        ImageIconAvatarSvg(image: AppImages.assetsImagesFavoriteIcon),
        ImageIconAvatarSvg(image: AppImages.assetsImagesStarIcon),
        ImageIconAvatarSvg(image: AppImages.assetsImagesFemaleIcon),
        ImageIconAvatarSvg(image: AppImages.assetsImagesMaleIcon),

        ImageIconAvatar(image: AppImages.assetsImagesStarIcon),
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColor.primaryColor,
          child: Icon(Icons.favorite, color: Colors.white, size: 18),
        ),
        ImageIconAvatar(image: AppImages.assetsImagesFemaleIcon),
        ImageIconAvatar(image: AppImages.assetsImagesMaleIcon),
      ],
    );
  }
}
