import 'package:flutter/material.dart';
import 'package:medical_app/features/your%20_appointment/presentaion/views/widget/custom_title_details_perso.dart';

class CustomPersonData extends StatelessWidget {
  const CustomPersonData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 8,
            children: [
              CustomTitleDetailsPerson(title: 'Booking for'),
              CustomTitleDetailsPerson(title: 'Full Name'),
              CustomTitleDetailsPerson(title: 'Age'),
              CustomTitleDetailsPerson(title: 'Gender'),
            ],
          ),
          Column(
            spacing: 8,
            children: [
              CustomTitleDetailsPerson(
                title: 'another person',
                fontWeight: FontWeight.w500,
              ),
              CustomTitleDetailsPerson(
                title: 'Jane Doe',
                fontWeight: FontWeight.w500,
              ),
              CustomTitleDetailsPerson(
                title: '30',
                fontWeight: FontWeight.w500,
              ),
              CustomTitleDetailsPerson(
                title: 'female',
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
