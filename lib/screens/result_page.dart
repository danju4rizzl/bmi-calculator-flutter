import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/change_route_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.bmiStatus,
      @required this.bmiText});

  final String bmiResult;
  final String bmiStatus;
  final String bmiText;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result!',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiStatus.toUpperCase(),
                    style: kResultStatusStyle,
                  ),
                  Text(bmiResult, style: kResultsBmiStyle),
                  Text(
                    bmiText,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ChangeRouteButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputPage()),
              );
            },
            routeButtonLabel: 're-calculate',
          ),
        ],
      ),
    );
  }
}
