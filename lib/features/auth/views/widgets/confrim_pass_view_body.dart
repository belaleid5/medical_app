import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_app_bar.dart';
import 'package:medical_app/core/widgets/sup_title_message_sceen.dart';
import 'package:medical_app/features/auth/views/widgets/cusom_text_form_field.dart';
import 'package:medical_app/features/auth/views/widgets/form_title.dart';

class ConfirmPassowrdViewBody extends StatefulWidget {
  const ConfirmPassowrdViewBody({super.key});

  @override
  State<ConfirmPassowrdViewBody> createState() =>
      _ConfirmPassowrdViewBodyState();
}

class _ConfirmPassowrdViewBodyState extends State<ConfirmPassowrdViewBody> {
  late String password, confrmpassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: "Set Passowrd"),
          SizedBox(height: 28),
          SupTitleMessage(
            supTitle:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\n eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
          SizedBox(height: 28),

          FormTitle(title: "New Passowrd"),
          SizedBox(height: 7),

          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter Some Text";
              }
              return "";
            },
            keyboardType: TextInputType.visiblePassword,
            hint: "**********",
            onSaved: (value) {
              password = value!;
            },
          ),
          SizedBox(height: 12),

          FormTitle(title: "Confirm Passowrd"),
          SizedBox(height: 7),

          CustomTextFormField(
            validator: (value) {
              if (value == password) {
                return "Not Confirm passowrd";
              }
              return "";
            },
            keyboardType: TextInputType.visiblePassword,
            hint: "**********",
            onSaved: (value) {
              confrmpassword = value!;
            },
          ),
        ],
      ),
    );
  }
}
