import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  const BuildImage({
    Key? key,
    required this.height,
    required this.width,
    this.imagePath = "assets/images/background.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    );
  }
}
