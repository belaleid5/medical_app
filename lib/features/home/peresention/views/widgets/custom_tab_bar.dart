import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/extension_size_provider.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/data/model/tab_bar_model.dart';
import 'package:medical_app/features/home/peresention/views/widgets/tab_bar_item.dart';

class CustomTapBar extends StatefulWidget {
  const CustomTapBar({super.key});

  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0; //

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: currentIndex,
      length: TabBarModelList.length,
      vsync: this,
    );

    Future.delayed(Duration.zero, () {
      setState(() {
        currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      controller: _tabController,
      unselectedLabelColor: Colors.black,
      indicator: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      labelColor: Colors.white,
      dividerColor: Colors.transparent,
      tabs: List<Widget>.generate(TabBarModelList.length, (index) {
        return Tab(
          height: context.scaleHeight * 70,
          icon: TabBarItem(
            color: currentIndex == index ? AppColor.primaryColor : Colors.white,
            number: TabBarModelList[index].number,
            month: TabBarModelList[index].month,
          ),
        );
      }),
    );
  }
}
