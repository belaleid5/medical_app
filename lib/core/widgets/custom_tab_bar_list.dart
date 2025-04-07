import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/features/home/peresention/views/widgets/tab_bar_item.dart';
import 'package:medical_app/core/models/tab_bar_model.dart';

class CustomTapBar extends StatefulWidget {
  final List<TabBarModel> tabs;

  const CustomTapBar({super.key, required this.tabs});

  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // تأكد من أن القائمة ليست فارغة قبل إنشاء TabController
    if (widget.tabs.isEmpty) {
      throw Exception("Tabs list must not be empty");
    }

    _tabController = TabController(
      initialIndex: currentIndex,
      length: widget.tabs.length,
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
    if (widget.tabs.isEmpty) {
      return const Center(
        child: Text(
          'لا توجد بيانات لعرضها في التاب بار',
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    return TabBar(
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      controller: _tabController,
      unselectedLabelColor: Colors.black,
      indicator: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      labelColor: Colors.white,
      dividerColor: Colors.transparent,
      tabs: List<Widget>.generate(widget.tabs.length, (index) {
        final model = widget.tabs[index];
        return SizedBox(
          width: 80.w, // استخدام ScreenUtil
          child: Tab(
            height: 70.h, // استخدام ScreenUtil
            icon: TabBarItem(
              color:
                  currentIndex == index ? AppColor.primaryColor : Colors.white,
              number: model.number,
              month: model.month,
            ),
          ),
        );
      }),
    );
  }
}
