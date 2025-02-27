import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText, @required this.interpretation,});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
//                    'Normal',
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
//                    '18.3',
                  bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
//                      'Your BMI result is quite low, you should eat more',
                  interpretation,
                      textAlign: TextAlign.center,
                      style:kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE_CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
