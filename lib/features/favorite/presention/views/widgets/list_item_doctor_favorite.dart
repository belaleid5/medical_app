import 'package:flutter/material.dart';
import 'package:medical_app/features/favorite/presention/data/models/favorite_doctor_models.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/card_favorite_doctor_item.dart';

class ListItemDoctorFavorite extends StatelessWidget {
  const ListItemDoctorFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listFavoriteDoctorModels.length,
      itemBuilder: (context, index) {
        return CardFavoriteDoctorItem(
          favoriteDoctorModels: listFavoriteDoctorModels[index],
        );
      },
    );
  }
}
