import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';

class CustomTextFormWriteMessage extends StatelessWidget {
  const CustomTextFormWriteMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return MessageBar(
      onSend: (_) {},
      actions: [
        InkWell(
          child: Icon(Icons.add, color: Colors.black, size: 24),
          onTap: () {},
        ),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: InkWell(
            child: Icon(Icons.camera_alt, color: Colors.green, size: 24),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
