import 'package:ecommerce_app/contact.dart';
import 'package:ecommerce_app/screens/custom_button.dart';
import 'package:ecommerce_app/screens/custom_text.dart';
import 'package:ecommerce_app/screens/custom_text_from_feild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Welcome,',
                  color: Colors.black,
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Sign Up',
                  color: primaryColor,
                  fontSize: 18,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Sign in to Continue ',
              fontSize: 14,
              color: Colors.grey,
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFromField(
              text: 'Email',
              hint: 'iamdavid@gmail.com',
              onSaved: (Value) {},
              validator: (Value) {},
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFromField(
              obscureText: true,
              text: 'Password',
              hint: '************',
              onSaved: (Value) {},
              validator: (Value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "ForgetPassword?",
              color: Colors.black,
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'SIGN IN ',
              onPressd: () {},
            ),
            
        
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: '-OR-',
              color: Colors.black,
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/facebook.png')),
                    SizedBox(
                      width: 135,
                    ),
                    CustomText(
                      text: 'Sign In With Facebook',
                      alignment: Alignment.topCenter,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/google.png')),
                    SizedBox(
                      width: 135,
                    ),
                    CustomText(
                      text: 'Sign In With Google',
                      alignment: Alignment.topCenter,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
