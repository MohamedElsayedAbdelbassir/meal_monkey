import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_monkey/Screens/new_password/view.dart';

class AfterResetScreen extends StatefulWidget {
  const AfterResetScreen({Key? key}) : super(key: key);

  @override
  State<AfterResetScreen> createState() => _AfterResetScreenState();
}

class _AfterResetScreenState extends State<AfterResetScreen> {
  bool _onEditing = true;
  String _code = '';

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
              'We have sent an OTP to\nyour Mobile',
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
              "Please check your mobile number 071*****12\ncontinue to reset your password ",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
            ),
            SizedBox(
              height: 54,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {},
                    decoration: const InputDecoration(hintText: "*"),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onSaved: (pin2) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: const InputDecoration(hintText: "*"),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onSaved: (pin3) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: const InputDecoration(hintText: "*"),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onSaved: (pin4) {},
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: const InputDecoration(hintText: "*"),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => NewPasswordScreen(),
                      ),
                      (route) => true);
                },
                child: Text(' Next')),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't Receive?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Click Here',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
