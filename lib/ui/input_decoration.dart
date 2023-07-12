import 'package:flutter/material.dart';

class InputDecorations{

  static InputDecoration authInputDecoration({
    required String labelText,
  }){
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color:Color.fromARGB(255, 147, 7, 7)
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red
        )
      ),
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.grey
      ),
    );
  }

}