import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart' show AppTextStyle;
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

class CustomFormFieldWritMessage extends StatelessWidget {
  const CustomFormFieldWritMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(color: AppColor.secondaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CustomIconAvatar(
              radius: 16,
              sizeIcon: 18,
              colorIcon: AppColor.primaryColor,
              icon: Icons.attach_file,
              color: Colors.white,
            ),

            Container(
              alignment: Alignment.centerRight,
              width: 213,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
              ),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Write Here...",
                      style: AppTextStyle.semiBold12Weight300.copyWith(
                        color: AppColor.lightPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  CustomIconAvatar(
                    radius: 16,
                    sizeIcon: 18,
                    colorIcon: AppColor.primaryColor,
                    icon: Icons.settings_voice_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            CustomIconAvatar(
              radius: 16,
              sizeIcon: 18,
              icon: Icons.send,
              color: AppColor.primaryColor,
              colorIcon: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
