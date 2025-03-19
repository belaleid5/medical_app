import 'package:flutter/material.dart';
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
            sizeIcon: 11,
            icon: Icons.check,
            color: Colors.white,
            colorIcon: AppColor.primaryColor,
          ),
          SizedBox(width: 4),
          CustomIconAvatar(
            radius: 8,
            sizeIcon: 11,
            icon: Icons.cancel_sharp,
            color: Colors.white,
            colorIcon: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
