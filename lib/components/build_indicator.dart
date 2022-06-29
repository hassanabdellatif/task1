import 'package:flutter/material.dart';

class BuildIndicator extends StatelessWidget {
  final int index;

  const BuildIndicator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(
          index == 0 ? Color(0xffd2b589) : Color(0xffe8e8e8),
        ),
        buildContainer(
          index == 1 ? Color(0xffd2b589) : Color(0xffe8e8e8),
        ),
      ],
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 10,
      width: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }
}
