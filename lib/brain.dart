import 'dart:math';

class Brain {
  Brain({this.height = 0, this.weight = 0});
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else {
      if (_bmi > 18.5) {
        return 'normal';
      } else {
        return 'underweight';
      }
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have heigher than a normal body, try do more sports';
    } else {
      if (_bmi > 18.5) {
        return 'You have a normal body, Great';
      } else {
        return 'You have lower than a normal body, you can eat a bit more';
      }
    }
  }
}
