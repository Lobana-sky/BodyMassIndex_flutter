// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, invalid_required_named_param, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.label, required this.onPressed});
  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: Center(child: Text(label)),
        color: kBottomColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
