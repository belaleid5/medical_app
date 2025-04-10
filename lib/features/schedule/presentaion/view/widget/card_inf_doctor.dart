import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_and_title.dart';
import 'package:medical_app/features/home/peresention/views/widgets/name_and_title_doctor.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/custom_prof_experience.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/custom_sup_title_focus.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/doctor_image.dart'
    show DoctorImage;

class CardInfoDoctor extends StatelessWidget {
  const CardInfoDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(top: 10.h),
        alignment: Alignment.center,
        height: 300.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: AppColor.lightPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoctorImage(),
                Column(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CustomProfExperience(), CustomSupTitleFocus()],
                ),
              ],
            ),
            DoctorNameAndJob(
              name: "Dr. Olivia Turner, M.D.",
              jobTitle: "Dermato-Endocrinology",
            ),
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconAndTitle(title: "4.9", icon: Icons.star),
                CustomIconAndTitle(
                  title: "60",
                  icon: FontAwesomeIcons.commentDots,
                ),
                CustomIconAndTitle(
                  title: "Mon - Sat / 9 AM - 4 PM",
                  icon: Icons.access_alarm,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
