import 'package:ecommerce_app/contact.dart';
import 'package:ecommerce_app/screens/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressd;

  const CustomButton({Key key, this.text, this.onPressd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: primaryColor),
      child: TextButton(
          onPressed: onPressd,
          child: CustomText(
            text: text,
            color: Colors.white,
            alignment: Alignment.topCenter,
          )),
    );
  }
}
