import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/core/widgets/custom_icon_and_title.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';

class CardDetailsDoctor extends StatelessWidget {
  const CardDetailsDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
      child: Container(
        width: 296.w,
        decoration: BoxDecoration(
          color: AppColor.lightPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            DoctorImage(
              image: AppImages.assetsImagesDrOlivia,
              radiusImage: 38,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 230.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dr. Olivia Turner, M.D.",
                          style: AppTextStyle.semiBold14.copyWith(
                            color: AppColor.primaryColor,
                          ),
                        ),
                        Text(
                          "Dermato-Endocrinology",
                          style: AppTextStyle.semiBold12,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      CustomIconAndTitle(title: "4.5", icon: Icons.star),
                      CustomIconAndTitle(
                        title: "60",
                        icon: FontAwesomeIcons.commentDots,
                      ),
                      Spacer(),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: FontAwesomeIcons.question,
                        color: Colors.white,
                        colorIcon: AppColor.primaryColor,
                      ),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: FontAwesomeIcons.heart,
                        color: Colors.white,
                        colorIcon: AppColor.primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
