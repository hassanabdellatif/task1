import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double width;
  final double height;
  final double radius;
  final String route;
  const BuildButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.width,
    required this.height,
    required this.route,
    this.radius = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            onPrimary: textColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(route);
          },
          child: Text(text),
        ),
      ),
    );
  }
}
