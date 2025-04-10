import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/features/chat/presention/view/widget/custom_message_card.dart';
import 'package:medical_app/features/chat/presention/view/widget/custom_typing_widget.dart';
import 'package:medical_app/features/chat/presention/view/widget/form_field_write_message.dart';
import 'package:medical_app/features/chat/presention/view/widget/voice_message_bubble.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomMessageCard(
                color: AppColor.lightPrimaryColor,

                title:
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",

                alignment: Alignment.topRight,
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.zero,
              ),
              CustomMessageCard(
                title:
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",

                alignment: Alignment.topLeft,
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(15),
              ),
              CustomMessageCard(
                color: AppColor.lightPrimaryColor,

                title:
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",

                alignment: Alignment.topRight,
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.zero,
              ),
              AudioMessageCard(
                profileImage: AppImages.assetsImagesDrOlivia,
                duration: Duration(minutes: 2, seconds: 50),
                position: Duration(seconds: 30),
                onPlayPause: () {},
                onSeek: (value) {},
                isPlaying: false,
              ),

              CustomMessageCard(
                color: AppColor.lightPrimaryColor,

                title:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                alignment: Alignment.topRight,
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.zero,
              ),
            ],
          ),
        ),
        CustomTypingWidget(),
        CustomFormFieldWritMessage(),
      ],
    );
  }
}
