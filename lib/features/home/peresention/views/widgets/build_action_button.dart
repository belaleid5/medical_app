import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_icon_avatar.dart';

class BuildActionButtons extends StatelessWidget {
  const BuildActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Row(
        children: const [
          CustomIconAvatar(
            radius: 8,
            sizeIcon: 13,
            icon: Icons.check,
            color: Colors.white,
            colorIcon: AppColor.primaryColor,
          ),
          SizedBox(width: 7),
          CustomIconAvatar(
            radius: 8,
            sizeIcon: 13,
            icon: Icons.clear,
            color: Colors.white,
            colorIcon: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
