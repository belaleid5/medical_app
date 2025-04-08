import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/form_title.dart';

class DescriptionProblems extends StatelessWidget {
  const DescriptionProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTitle(title: "Describe your problem"),
          TextFormField(
            keyboardType: TextInputType.text,
            maxLines: 4,

            decoration: InputDecoration(
              hintText: "enter your Problem here...",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColor.lightPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
