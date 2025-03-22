import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';
import 'package:medical_app/features/notification/presention/view/widgets/custom_app_bar_notification.dart';
import 'package:medical_app/features/notification/presention/view/widgets/notification_view_body.dart'
    show NotificationViewBody;

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  static const routeName = 'notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarNotification(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: NotificationViewBody(),
    );
  }
}
