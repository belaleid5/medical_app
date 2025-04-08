import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_and_title.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';
import 'package:medical_app/features/home/peresention/views/widgets/doctor_imae.dart';

class ItemCardProfileDoctor extends StatelessWidget {
  const ItemCardProfileDoctor({
    super.key,
    required this.image,
    required this.rating,
    required this.numMessage,
    required this.ratingIcon,
    required this.favoriteIcon,
    required this.questions,
    required this.commentDots,
  });

  final String image, rating, numMessage;
  final IconData ratingIcon, favoriteIcon, questions, commentDots;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.lightPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            DoctorImage(image: image),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    spacing: 10,
                    children: [
                      CustomIconAndTitle(title: rating, icon: ratingIcon),
                      CustomIconAndTitle(
                        title: numMessage,
                        icon: FontAwesomeIcons.commentDots,
                      ),
                      Spacer(),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: questions,
                        color: Colors.white,
                        colorIcon: AppColor.primaryColor,
                      ),
                      CustomIconAvatar(
                        radius: 11,
                        sizeIcon: 11,
                        icon: favoriteIcon,
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
