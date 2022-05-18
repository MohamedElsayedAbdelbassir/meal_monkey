import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/login/view.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
              'New Password',
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
              "Please enter your email to receive a \nlink to  create a new password via email",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 39,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'New Password',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => true);
                },
                child: Text(' Next')),
          ],
        ),
      ),
    ));
  }
}
