import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/custom_password_field.dart';
import 'package:medical_app/features/auth/views/screens/login_view.dart';
import 'package:medical_app/features/auth/views/widgets/cusom_text_form_field.dart';
import 'package:medical_app/features/auth/views/widgets/data_of_birth.dart';
import 'package:medical_app/features/auth/views/widgets/form_title.dart';
import 'package:medical_app/features/auth/views/widgets/term_use_privacy.dart';

class SectionFormData extends StatefulWidget {
  const SectionFormData({super.key});

  @override
  State<SectionFormData> createState() => _SectionFormDataState();
}

class _SectionFormDataState extends State<SectionFormData> {
  late String name, email, phone, password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          FormTitle(title: "Full Name"),
          SizedBox(height: 5),
          CustomTextFormField(
            onSaved: (value) {
              name = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter some Text";
              }
              return "";
            },
            keyboardType: TextInputType.name,
            hint: "Full Name",
          ),

          SizedBox(height: 12),
          FormTitle(title: "Email"),
          SizedBox(height: 5),
          CustomTextFormField(
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter some Text";
              }
              return "";
            },
            keyboardType: TextInputType.name,
            hint: "example@gmail.com",
          ),

          SizedBox(height: 12),

          FormTitle(title: "Password"),
          SizedBox(height: 5),
          CustomPasswordField(
            onSaved: (value) {
              password = value!;
            },
          ),
          SizedBox(height: 12),
          FormTitle(title: "Mobile Number"),
          SizedBox(height: 5),
          CustomTextFormField(
            onSaved: (value) {
              phone = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter some Text";
              }
              return "";
            },
            keyboardType: TextInputType.phone,
            hint: "01*********",
          ),

          SizedBox(height: 12),
          FormTitle(title: "Date of Birth"),
          SizedBox(height: 5),
          DataOfBirth(),
          SizedBox(height: 16),
          Align(alignment: Alignment.center, child: TermsUsePrivacy()),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              title: "Sign Up",
              buttonTitleColor: Colors.white,
              buttonColor: AppColor.primaryColor,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pushNamed(context, LoginView.routeName);
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
