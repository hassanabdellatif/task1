import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task1/components/build_indicator.dart';
import 'package:task1/models/data_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
  final List<Data> myData = [
    Data(
      title: "Get food delivery to your doorstep asap",
      description:
          "We have a young and professional delivery team that will bring your food as soon as possible to your doorstep",
      imagePath: "assets/images/bicycle_courier_delivering_food.png",
    ),
    Data(
      title: "Buy any food from your favourite restaurant",
      description:
          "We are constantly adding your favorite restaurants throughout the territory and around your area, carefully selected",
      imagePath: "assets/images/done.png",
    ),
  ];

  @override
  void initState() {
    Timer.periodic(Duration(minutes: 1), (timer) {
      if (_currentIndex < 1) _currentIndex++;

      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: myData
                .map(
                  (item) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 45),
                        height: 125,
                        width: 125,
                        child: Image(
                          image: AssetImage(item.logoPath),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 300,
                        child: Image(
                          image: AssetImage(item.imagePath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Text(
                          item.description,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            // color: Color(0xff5b5b5b),
                            color: Colors.grey[500],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
            onPageChanged: (val) {
              setState(
                () {
                  _currentIndex = val;
                  if (_currentIndex == 1) {
                    Future.delayed(
                      Duration(seconds: 2),
                      () => Navigator.of(context)
                          .pushReplacementNamed("login_screen"),
                    );
                  }
                },
              );
            },
          ),
          Align(
            alignment: Alignment(0, 0.65),
            child: BuildIndicator(index: _currentIndex),
          ),
          Align(
            alignment: Alignment(0, 0.85),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff50afab),
                  onPrimary: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("login_screen");
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.98),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xff6a9790),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("register_screen");
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.9, -0.9),
            child: Container(
              height: 35,
              width: 70,
              child: ElevatedButton(
                child: Text('Skip'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xfff9f2e8),
                  onPrimary: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("login_screen");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
