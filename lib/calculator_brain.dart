import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});


  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation(){

    if(_bmi >= 25){
      return 'You have a higher than normal body weight try to exercise more.';
    } else if(_bmi > 18.5){
      return 'You have a normal body weight. Good Job';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}