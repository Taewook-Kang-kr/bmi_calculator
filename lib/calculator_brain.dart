import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '비만';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '당신은 평균 체중보다 높습니다. 오늘 운동 어때?';
    } else if (_bmi >= 18.5) {
      return '당신은 정상 체중입니다. 꾸준히 유지해!';
    } else {
      return '당신은 저체중입니다. 오늘 야식 어때?';
    }
  }
}
