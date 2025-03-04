import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:medical_app/core/utils/app_text_style.dart';

class DataOfBirth extends StatefulWidget {
  const DataOfBirth({super.key});

  @override
  State<DataOfBirth> createState() => _DataOfBirthState();
}

String? selectedDate;

class _DataOfBirthState extends State<DataOfBirth> {
  Future<void> _pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        selectedDate = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: AppColor.lightSecondryColor,
        elevation: 5,
        child: ListTile(
          title: Text(
            selectedDate == null ? "DD/MM/YYY" : selectedDate!,
            style: AppTextStyle.semiBold20.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
          onTap: () => _pickDate(context),
        ),
      ),
    );
  }
}
