import 'package:bmi_calculator/constance.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Bmi calculator'.toUpperCase(),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Your Result',
              style: kBoldTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
