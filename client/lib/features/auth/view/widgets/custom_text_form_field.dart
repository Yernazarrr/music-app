import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return '$hintText is missing';
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
