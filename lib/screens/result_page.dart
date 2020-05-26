import 'package:flutter/material.dart';
import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/change_route_button.dart';

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
                    'overweight'.toUpperCase(),
                    style: kResultStatusStyle,
                  ),
                  Text(50.7.toString(), style: kResultsBmiStyle),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more',
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ChangeRouteButton(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            routeButtonLabel: 're-calculate',
          ),
        ],
      ),
    );
  }
}
