import 'package:flutter/material.dart';
import 'package:bmi_calculator/constance.dart';

const iconSize = 80.0;

class IconContent extends StatelessWidget {
  IconContent({this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          label.toUpperCase(),
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
