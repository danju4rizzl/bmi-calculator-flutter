import 'package:flutter/material.dart';
import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainBackgroundColor,
        scaffoldBackgroundColor: kMainBackgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
