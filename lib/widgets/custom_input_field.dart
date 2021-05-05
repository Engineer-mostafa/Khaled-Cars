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
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(mdq)),
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintStyleColor,
            fontSize: 30,
          ),
          fillColor: Colors.white),
    );
  }
}
