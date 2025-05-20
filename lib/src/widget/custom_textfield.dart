import 'package:flutter/material.dart';

import '../../../core/color.dart';


class CustomTextfield extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController?  controller;

  const CustomTextfield({
    super.key,
    required this.labelText,
    required this.hintText,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(Icons.email_outlined, color: AppColor.mainblack),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.mainblack),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}