import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_images.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 40,
      child: SearchAnchor(
        viewBackgroundColor: Colors.white,
        // The builder defines the initial widget (SearchBar)
        builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            backgroundColor: WidgetStateProperty.all(AppColor.secondaryColor),
            controller: controller,
            leading: SvgPicture.asset(AppImages.assetsImagesMemuSearchField),
            trailing: [SvgPicture.asset(AppImages.assetsImagesSearch)],

            onTap: () {
              controller.openView(); // Opens the search view when tapped
            },
            onChanged: (value) {
              controller.openView(); // Updates the view as the user types
            },
          );
        },
        suggestionsBuilder: (
          BuildContext context,
          SearchController controller,
        ) {
          // Example list of items to search from
          final List<String> items = [
            'Apple',
            'Banana',
            'Cherry',
            'Dragon Fruit',
            'Elderberry',
          ];

          // Filter items based on the search query
          final String query = controller.value.text.toLowerCase();
          final List<String> filteredItems =
              items
                  .where((item) => item.toLowerCase().contains(query))
                  .toList();

          // Return a list of suggestion widgets
          return filteredItems.map((item) {
            return ListTile(
              title: Text(item),
              onTap: () {
                controller.closeView(
                  item,
                ); // Closes the view and sets the selected item
              },
            );
          }).toList();
        },
      ),
    );
  }
}
