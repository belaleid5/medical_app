import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';
import 'package:medical_app/core/widgets/cusom_text_form_field.dart';
import 'package:medical_app/core/widgets/custom_app_bar.dart';
import 'package:medical_app/core/widgets/custom_button.dart';
import 'package:medical_app/core/widgets/data_of_birth.dart';
import 'package:medical_app/core/widgets/form_title.dart';
import 'package:medical_app/features/profile/presention/views/widgets/custo,_user_image_profile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Form(
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Profile",
                iconBar: Icons.settings,
                color: AppColor.primaryColor,
              ),
              SizedBox(height: 18),
              CustomUserProfileImage(),

              FormTitle(title: "Full Name"),
              CustomTextFormField(
                keyboardType: TextInputType.name,
                hint: "John Doe",
              ),
              SizedBox(height: 18),
              FormTitle(title: "Phone Number"),
              CustomTextFormField(
                keyboardType: TextInputType.phone,
                hint: "+123 567 89000",
              ),
              SizedBox(height: 18),

              FormTitle(title: "Email"),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hint: "belaleid788@gmail.com",
              ),
              SizedBox(height: 18),

              FormTitle(title: "Date Of Birth"),
              DataOfBirth(),

              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  title: "Update Profile",
                  buttonTitleColor: Colors.white,
                  buttonColor: AppColor.primaryColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
