import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/login/view.dart';
import 'package:meal_monkey/Screens/register/view.dart';

class AfterSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 470,
              child: Stack(
                children: [
                  Image.asset(
                    'images/Organe top shape.png',
                    height: 370,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'images/Logo.png',
                      width: 218,
                      height: 185,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => true);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                        (route) => true);
                  },
                  child: Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}
