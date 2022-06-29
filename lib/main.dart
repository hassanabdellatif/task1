import 'package:flutter/material.dart';
import 'package:task1/screens/login_screen.dart';
import 'package:task1/screens/on_boarding_screen.dart';
import 'package:task1/screens/register_screen.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'on_boarding_screen',
      routes: {
        "on_boarding_screen": (context) => OnBoardingScreen(),
        "login_screen": (context) => LoginScreen(),
        "register_screen": (context) => RegisterScreen(),
      },
    );
  }
}
