import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';

class CustomAvailableTimeListWidget extends StatefulWidget {
  final List<TimeSlot> timeSlots;
  final String? initialSelectedTime;
  final Function(String) onTimeSelected;

  CustomAvailableTimeListWidget({
    super.key,
    required this.timeSlots,
    this.initialSelectedTime,
    required this.onTimeSelected,
  });

  @override
  State<CustomAvailableTimeListWidget> createState() =>
      _CustomAvailableTimeListWidgetState();
}

class _CustomAvailableTimeListWidgetState
    extends State<CustomAvailableTimeListWidget> {
  late String? selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = widget.initialSelectedTime;
  }

  @override
  Widget build(BuildContext context) {
    return _buildTimeGrid();
  }

  Widget _buildTimeGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppConstants.crossAxisCount,
          mainAxisSpacing: AppConstants.mainAxisSpacing,
          crossAxisSpacing: AppConstants.crossAxisSpacing,
          childAspectRatio: AppConstants.gridItemAspectRatio,
        ),
        itemCount: widget.timeSlots.length,
        itemBuilder: (context, index) {
          final timeSlot = widget.timeSlots[index];
          return _buildTimeSlotButton(timeSlot);
        },
      ),
    );
  }

  Widget _buildTimeSlotButton(TimeSlot timeSlot) {
    final isSelected = selectedTime == timeSlot.time;

    return GestureDetector(
      onTap:
          timeSlot.isAvailable
              ? () {
                setState(() {
                  selectedTime = timeSlot.time;
                });
                widget.onTimeSelected(timeSlot.time);
              }
              : null, // Disable tap if the time is not available
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingHorizontal,
          vertical: AppConstants.paddingVertical,
        ),
        decoration: BoxDecoration(
          color: TimeSlotStyle.getBackgroundColor(
            isSelected: isSelected,
            isAvailable: timeSlot.isAvailable,
            selectedColor: AppColors.selectedColor,
            availableColor: AppColors.availableColor,
            unavailableColor: AppColors.unavailableColor,
          ),
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        ),
        child: Text(
          timeSlot.time,
          style: TextStyle(
            color: TimeSlotStyle.getTextColor(
              isSelected: isSelected,
              isAvailable: timeSlot.isAvailable,
              selectedTextColor: AppColors.selectedTextColor,
              availableTextColor: AppColors.availableTextColor,
              unavailableTextColor: AppColors.unavailableTextColor,
            ),
            fontWeight: FontWeight.w600,
            fontSize: AppConstants.fontSize,
          ),
        ),
      ),
    );
  }
}

final List<TimeSlot> times = [
  TimeSlot(time: "9:00 AM", isAvailable: true),
  TimeSlot(time: "9:30 AM", isAvailable: true),
  TimeSlot(time: "10:00 AM", isAvailable: true),
  TimeSlot(time: "10:30 AM", isAvailable: true),
  TimeSlot(time: "11:00 AM", isAvailable: true),
  TimeSlot(time: "11:30 AM", isAvailable: false),
  TimeSlot(time: "12:00 PM", isAvailable: true),
  TimeSlot(time: "12:30 PM", isAvailable: true),
  TimeSlot(time: "1:00 PM", isAvailable: false),
  TimeSlot(time: "1:30 PM", isAvailable: false),
  TimeSlot(time: "2:00 PM", isAvailable: true),
  TimeSlot(time: "2:30 PM", isAvailable: false),
  TimeSlot(time: "3:00 PM", isAvailable: false),
  TimeSlot(time: "3:30 PM", isAvailable: true),
  TimeSlot(time: "4:00 PM", isAvailable: true),
];

class AppColors {
  static final Color selectedColor = AppColor.primaryColor;
  static final Color availableColor = AppColor.lightSecondryColor;
  static final Color unavailableColor = AppColor.lightPrimaryColor;
  static const Color selectedTextColor = Colors.white;
  static const Color availableTextColor = AppColor.lightPrimaryColor;
  static final Color unavailableTextColor = Colors.black;
  static const Color backgroundColor = Colors.black;
}

class AppConstants {
  static const double gridItemAspectRatio = 2.5;
  static const int crossAxisCount = 5;
  static const double mainAxisSpacing = 10.0;
  static const double crossAxisSpacing = 10.0;
  static const double borderRadius = 20.0;
  static const double paddingHorizontal = 8.0;
  static const double paddingVertical = 6.0;
  static const double fontSize = 14.0;
}

class TimeSlotStyle {
  static Color getBackgroundColor({
    required bool isSelected,
    required bool isAvailable,
    required Color selectedColor,
    required Color availableColor,
    required Color unavailableColor,
  }) {
    if (isSelected) return selectedColor;
    if (isAvailable) return availableColor;
    return unavailableColor;
  }

  static Color getTextColor({
    required bool isSelected,
    required bool isAvailable,
    required Color selectedTextColor,
    required Color availableTextColor,
    required Color unavailableTextColor,
  }) {
    if (isSelected) return selectedTextColor;
    if (isAvailable) return availableTextColor;
    return unavailableTextColor;
  }
}

class TimeSlot {
  final String time;
  final bool isAvailable;
  final bool isSelected;

  TimeSlot({
    required this.time,
    required this.isAvailable,
    this.isSelected = false,
  });

  TimeSlot copyWith({bool? isAvailable, bool? isSelected}) {
    return TimeSlot(
      time: time,
      isAvailable: isAvailable ?? this.isAvailable,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
