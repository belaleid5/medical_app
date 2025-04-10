import 'package:flutter/material.dart';
import 'package:medical_app/features/chat/presention/view/widget/app_bar_chat.dart';
import 'package:medical_app/features/chat/presention/view/widget/chat_view_body.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const routeName = "chat_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChat(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: ChatViewBody(),
    );
  }
}
