import 'package:flutter/material.dart';

class PlainTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;

  const PlainTextField(
      {super.key, required this.controller, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.name,
        controller: controller,
        decoration: InputDecoration(
          label: Text(title),
          floatingLabelStyle: TextStyle(color: Colors.blue),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
        ));
  }
}
