import 'package:flutter/material.dart';
import 'package:bmi_calculator/constance.dart';

class ChangeRouteButton extends StatelessWidget {
  ChangeRouteButton({@required this.onTap, @required this.routeButtonLabel});

  final Function onTap;
  final String routeButtonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 5.0,
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            routeButtonLabel.toUpperCase(),
            style: kResultButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
