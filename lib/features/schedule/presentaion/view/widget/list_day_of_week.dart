import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/features/schedule/presentaion/view/widget/item_day_of_week.dart';

class ListDayOfWeek extends StatelessWidget {
  ListDayOfWeek({super.key});

  final List<String> listOfWeek = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35.w),
      height: 25.h,
      child: ListView.builder(
        itemCount: listOfWeek.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return ItemDayOfWeek(dayOfWeek: listOfWeek[index]);
        },
      ),
    );
  }
}
