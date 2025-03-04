import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/custom_password_field.dart';
import 'package:medical_app/features/auth/views/widgets/cusom_text_form_field.dart';
import 'package:medical_app/features/auth/views/widgets/forget_passowrd.dart';
import 'package:medical_app/features/auth/views/widgets/form_title.dart';
import 'package:medical_app/features/home/features/peresention/views/home_view.dart';

class SectionTextFormField extends StatefulWidget {
  const SectionTextFormField({super.key});

  @override
  State<SectionTextFormField> createState() => _SectionTextFormFieldState();
}

class _SectionTextFormFieldState extends State<SectionTextFormField> {
  late String email, password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormTitle(title: "Email Or Mopile Number"),
          SizedBox(height: 12),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            hint: "example@example.com",
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter some Text";
              }
              return "";
            },
          ),
          SizedBox(height: 20),
          FormTitle(title: "Password"),
          SizedBox(height: 12),
          CustomPasswordField(
            onSaved: (value) {
              password = value!;
            },
          ),
          SizedBox(height: 7),
          ForgetPassword(),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              title: 'Log In',
              buttonTitleColor: Colors.white,
              buttonColor: AppColor.primaryColor,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pushNamed(context, HomeView.routeName);
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
