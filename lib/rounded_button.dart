// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, invalid_required_named_param, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.pressed, required this.icon});
  final Function pressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        pressed();
      },
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
