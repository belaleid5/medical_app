import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/cusom_text_form_field.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({super.key});

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool isVisiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: isVisiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          isVisiblePassword = !isVisiblePassword;
          setState(() {});
        },
        icon: Icon(isVisiblePassword ? Icons.visibility : Icons.visibility_off),
      ),
      keyboardType: TextInputType.visiblePassword,
      hint: "***************",
    );
  }
}
