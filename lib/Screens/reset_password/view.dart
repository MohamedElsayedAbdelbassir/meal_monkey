import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/new_password/view.dart';

import '../after_reset/view.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.only(start: 34, end: 34),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Reset Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff4A4B4D),
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Please enter your email to receive a\n link to  create a new password via email",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 34,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => AfterResetScreen(),
                      ),
                      (route) => true);
                },
                child: Text(' Send')),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    ));
  }
}
