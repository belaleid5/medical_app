import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_widget_section.dart';
import 'package:medical_app/features/notification/presention/view/widgets/item_card_notifcation.dart';
import 'package:medical_app/features/notification/presention/view/widgets/title_section.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleSection(),
            ItemCardNotification(
              icon: FontAwesomeIcons.solidCalendarDays,
              title: "scheduled appointment",
              supTitle:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              date: "2 M",
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: AppColor.lightPrimaryColor,
                ),
                ItemCardNotification(
                  icon: FontAwesomeIcons.solidCalendarDays,
                  title: "scheduled Change",
                  supTitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  date: "2 H",
                ),
              ],
            ),
            ItemCardNotification(
              icon: Icons.note,
              title: "medical notes",
              supTitle:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              date: "2 H",
            ),
            CustomTitleSection(
              title: 'Yesterday',
              color: AppColor.primaryColor,
              containerColor: AppColor.lightPrimaryColor,
            ),
            ItemCardNotification(
              icon: FontAwesomeIcons.solidCalendarDays,
              title: "scheduled appointment",
              supTitle:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              date: "2 M",
            ),
            CustomTitleSection(
              title: '15 April',
              color: AppColor.primaryColor,
              containerColor: AppColor.lightPrimaryColor,
            ),
            ItemCardNotification(
              icon: FontAwesomeIcons.commentDots,
              title: "medical history update",
              supTitle:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              date: "2 M",
            ),
          ],
        ),
      ),
    );
  }
}
