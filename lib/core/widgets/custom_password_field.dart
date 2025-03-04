import 'package:flutter/material.dart';
import 'package:medical_app/features/auth/views/widgets/cusom_text_form_field.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, this.onSaved});

  final void Function(String?)? onSaved;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;
  late String password;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      icon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
      ),

      keyboardType: TextInputType.visiblePassword,
      hint: "***************",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        if (value.length <= 5) {
          return " to Short";
        }
        return "";
      },
      onSaved: widget.onSaved!,
    );
  }
}
