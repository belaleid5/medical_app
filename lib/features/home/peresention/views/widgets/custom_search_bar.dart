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
        builder: (BuildContext context, SearchController controller) {
          return SearchBarWidget(controller: controller);
        },
        suggestionsBuilder: (context, controller) {
          return [SearchListView(controller: controller)];
        },
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  final SearchController controller;
  const SearchBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: WidgetStateProperty.all(AppColor.secondaryColor),
      controller: controller,
      leading: SvgPicture.asset(AppImages.assetsImagesMemuSearchField),
      trailing: [SvgPicture.asset(AppImages.assetsImagesSearch)],
      onTap: controller.openView,
      onChanged: (_) => controller.openView(),
    );
  }
}

class SearchListView extends StatelessWidget {
  final SearchController controller;
  const SearchListView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final filteredItems = SearchService.getFilteredResults(
      controller.value.text,
    );

    return ListView.builder(
      shrinkWrap: true,
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return ListTile(
          title: Text(item),
          onTap: () => controller.closeView(item),
        );
      },
    );
  }
}

class SearchService {
  static final List<String> _items = [
    'Dr/Olivia',
    'Dr/Micheal',
    'Dr/Sophia',
    'Dr/Alexander',
    'Dr/John',
  ];

  static List<String> getFilteredResults(String query) {
    if (query.isEmpty) return _items;
    return _items
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
