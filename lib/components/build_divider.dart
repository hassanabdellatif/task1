import 'package:flutter/material.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 15.0),
              child: Divider(
                color: Colors.grey,
                height: 50,
              ),
            ),
          ),
          Text(
            "OR",
            style: TextStyle(color: Colors.grey[600]),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: Divider(
                color: Colors.grey,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
