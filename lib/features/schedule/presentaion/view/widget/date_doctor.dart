import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class WeekDatePicker extends StatefulWidget {
  @override
  _WeekDatePickerState createState() => _WeekDatePickerState();
}

class _WeekDatePickerState extends State<WeekDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, top: 20),
      height: 165.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Center(
        child: GridView.builder(
          itemCount: 31,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            childAspectRatio: 2.5,
            crossAxisSpacing: 0.1,
          ),
          itemBuilder: (context, index) {
            return index == 24
                ? Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: CircleAvatar(
                    backgroundColor: AppColor.primaryColor,
                    child: Text(
                      "${index + 1}",
                      style: AppTextStyle.semiBold12.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                : Text(
                  '${index + 1}',
                  style: AppTextStyle.semiBold12.copyWith(
                    color:
                        index == 6 ||
                                index == 13 ||
                                index == 20 ||
                                index == 24 ||
                                index == 27 ||
                                index == 28 ||
                                index == 29 ||
                                index == 30
                            ? Colors.black
                            : AppColor.lightPrimaryColor,
                  ),
                );
          },
        ),
      ),
    );
  }
}
