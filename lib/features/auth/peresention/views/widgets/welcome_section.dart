import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/sup_title_message_sceen.dart';
import 'package:medical_app/features/auth/peresention/views/widgets/welcome_title.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 34),
        WelcomeTitle(),
        SizedBox(height: 12),
        SupTitleMessage(
          supTitle:
              'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do\neiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        ),
        SizedBox(height: 47),
      ],
    );
  }
}
