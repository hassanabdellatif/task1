import 'package:flutter/material.dart';

class BuildForm extends StatelessWidget {
  final String text;
  final TextInputType type;
  final TextEditingController controller;
  final bool isPassword;
  final bool isPhoneNumber;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const BuildForm({
    Key? key,
    required this.text,
    required this.type,
    required this.controller,
    this.isPassword = false,
    this.isPhoneNumber = false,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: TextFormField(
        obscureText: isPassword,
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: text,
          prefixIcon: isPhoneNumber ? prefixIcon : null,
          suffixIcon: isPassword ? suffixIcon : null,
        ),
      ),
    );
  }
}
