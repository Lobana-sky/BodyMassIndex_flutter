// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, invalid_required_named_param, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiResult,
      required this.bmiInterpretation,
      required this.bmiCalc});
  final String bmiCalc;
  final String bmiResult;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultLable,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult.toUpperCase(),
                    style: kResultTitle,
                  ),
                  Text(
                    bmiCalc,
                    style: kBMIText,
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kResultDescription,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              label: 'RECALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
