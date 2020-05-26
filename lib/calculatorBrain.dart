import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.heightOfUser, this.weightOfUser});

  final int heightOfUser;
  final int weightOfUser;

  double _bmi;

  String calculateBMI() {
    _bmi = weightOfUser / pow(heightOfUser / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatusForUser() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultTextForUser() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal.Please try to exercise more to help your body combat COVID-19';
    } else if (_bmi > 18.5) {
      return 'Awesome! You\'re in great shape. Remember, exercises help your body combat COVID-19';
    } else {
      return 'Your body weight is lower than normal.Please try to eat more to help your body combat COVID-19';
    }
  }
}
