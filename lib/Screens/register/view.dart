import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/login/view.dart';
import 'package:meal_monkey/Screens/onboarding/view.dart';

class RegisterScreen extends StatelessWidget {
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
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff4A4B4D),
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your details to sign up',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 36,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile No',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Address',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: ' Password',
                  contentPadding: EdgeInsetsDirectional.only(
                      start: 37, top: 9, bottom: 28)),
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
                          builder: (context) => OnBoardingScreen()),
                      (route) => true);
                },
                child: Text('Sign Up')),
            SizedBox(
              height: 24,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => true);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            // Center(
            //   child: Text.rich(TextSpan(children: [
            //     TextSpan(
            //       text: "Don't have an Account? ",
            //       style: TextStyle(
            //         fontSize: 14,
            //       ),
            //     ),
            //     WidgetSpan(
            //         child: GestureDetector(
            //       onTap: () {},
            //       child: Text(
            //         'Sign Up',
            //         style: TextStyle(
            //             color: Color(0xffFC6011), fontWeight: FontWeight.bold),
            //       ),
            //     ))
            //   ])),
            // ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ));
  }
}
