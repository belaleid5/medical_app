import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/menu_icons_sort_by.dart';
import 'package:medical_app/features/doctors/presention/data/model/doctors_model_data_card.dart';
import 'package:medical_app/features/doctors/presention/views/widgets/card_doctor_info_item.dart';

class DoctorsViewBody extends StatelessWidget {
  const DoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          MenuIconsForSortBy(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listDoctorsModelDataCardInfo.length,
            itemBuilder: (context, index) {
              return CardDoctorInfoItem(
                modelCard: listDoctorsModelDataCardInfo[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
