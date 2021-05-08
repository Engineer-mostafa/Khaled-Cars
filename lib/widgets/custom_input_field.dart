//packages
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final hintText;
  final hintStyleColor;
  final mdq;

  CustomInputField({Key key, this.hintText, this.hintStyleColor, this.mdq})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
          contentPadding: new EdgeInsets.symmetric(vertical: 9, horizontal: 50.0),

          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintStyleColor,
            fontSize: 24,
          ),
          fillColor: Colors.white),
    );
  }
}
