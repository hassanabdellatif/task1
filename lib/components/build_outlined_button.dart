import 'package:flutter/material.dart';

class BuildOutlinedButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final String? route;
  final String imagePath;
  const BuildOutlinedButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    this.imagePath = "assets/images/google_logo.png",
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: height,
        width: width,
        child: OutlinedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 50,
                width: 50,
              ),
              Text(text),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
