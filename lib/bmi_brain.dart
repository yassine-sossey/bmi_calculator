import 'dart:math';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});
  final int weight;
  final int height;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'do sport and eat healthy';
    } else if (_bmi > 18) {
      return 'good Job keep going';
    } else {
      return 'maybe you should eat more';
    }
  }
}
