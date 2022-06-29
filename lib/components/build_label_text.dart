import 'package:flutter/material.dart';

class BuildLabelText extends StatelessWidget {
  final String label;
  final Color color;
  const BuildLabelText({
    Key? key,
    required this.label,
    this.color = const Color(0xff57565b),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
