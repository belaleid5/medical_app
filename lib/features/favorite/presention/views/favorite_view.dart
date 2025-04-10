import 'package:flutter/material.dart';
import 'package:medical_app/core/helper_functions/build_app_ba.dart';
import 'package:medical_app/features/favorite/presention/views/widgets/favorite_view_body.dart';
import 'package:medical_app/features/home/peresention/views/widgets/custom_bottom_nav_bar.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const String routeName = "favorite_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: buildAppBar(title: 'Favorite'),
      body: FavoriteViewBody(),
    );
  }
}
