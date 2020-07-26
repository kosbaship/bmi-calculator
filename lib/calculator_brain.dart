import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height,@required this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
    this._bmi = weight / pow(height/100, 2);
    return this._bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

//String getResult(){
//  if(this._bmi >= 25 ){
//    return 'Overweight';
//  } else if (this._bmi >= 18.5){
//    return 'Normal';
//  } else {
//    return 'Underweight';
//  }
//}
//String getInterpretation(){
//  if(this._bmi >= 25){
//    return 'You have a height than normal body weight, try to exercise more';
//  } else if (this._bmi >= 18.5){
//    return 'Your BMI result is quite low, you should eat more!';
//  } else {
//    return 'You have a lower than normal body weight, try to eat a bit more';
//  }
//}