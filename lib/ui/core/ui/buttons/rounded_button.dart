import 'package:flutter/material.dart';

Widget roundedButton(
    {required String buttonTitle, required VoidCallback onPressed}) {
  double borderRadius = 30;
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: borderRadius,
        ),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
