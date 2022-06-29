import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final String pageName;
  const BuildContainer({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.only(top: 16, bottom: 8, right: 16, left: 16),
            child: Text(
              "Welcome to Fashion Daily",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
                child: Text(
                  pageName,
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Help",
                    style: TextStyle(
                      color: Color(0xff3486f4),
                      fontSize: 16,
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(4),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}