import 'package:ecommerce_app/screens/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSaved;
  final Function validator;
  bool obscureText = true;

     CustomTextFromField(
      {Key key,
      this.text,
      this.hint,
      this.onSaved,
      this.validator,
      this.obscureText})
      : super(key: key);
      

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      CustomText(
        
        text: text,
        fontSize: 14,
        color: Colors.grey.shade900,
        alignment: Alignment.topLeft,
      ),
      TextFormField(
        obscureText: false,
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white),
      )
    ]));
  }
}
