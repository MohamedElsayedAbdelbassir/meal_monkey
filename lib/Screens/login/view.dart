import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/onboarding/view.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';

import '../register/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              'Login',
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
              'Add your details to login',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 36,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Your Email',
                contentPadding:
                    EdgeInsetsDirectional.only(start: 34, top: 18, bottom: 19),
              ),
            ),
            SizedBox(
              height: 24,
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => OnBoardingScreen()),
                      (route) => true);
                },
                child: Text('Login')),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordScreen(),
                    ),
                    (route) => true);
              },
              child: Text(
                'Forgot your password?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Text(
              'or Login With',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 46,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/fb1.png',
                width: 20,
                height: 20,
              ),
              label: Text(
                'Login with Facebook',
                style: TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(primary: Color(0xff367FC0)),
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/gp1.png',
                width: 20,
                height: 20,
              ),
              label: Text(
                'Login with Google',
                style: TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(primary: Color(0xffDD4B39)),
            ),
            SizedBox(
              height: 83,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                        (route) => true);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            // Center(
            //           child: Text.rich(TextSpan(children: [
            //             TextSpan(
            //               text: "Don't have an Account? ",
            //               style: TextStyle(
            //                 fontSize: 14,
            //               ),
            //             ),
            //             WidgetSpan(
            //                 child: GestureDetector(
            //               onTap: () {},
            //               child: Text(
            //                 'Sign Up',
            //                 style: TextStyle(
            //                     color: Color(0xffFC6011), fontWeight: FontWeight.bold),
            //               ),
            //             ))
            //           ])),
            //         ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ));
  }
}
