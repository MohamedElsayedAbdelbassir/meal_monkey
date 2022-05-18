import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  MorePage({Key? key}) : super(key: key);
  var name = TextEditingController(text: 'Payment Details');
  var mail = TextEditingController(text: 'My Orders');

  var mobileNum = TextEditingController(text: 'Notifications');
  var address = TextEditingController(text: 'Inbox');
  var pass = TextEditingController(text: 'About Us');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shopping_cart)
                  ],
                ),
                SizedBox(
                  height: 47,
                ),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: mail,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('images/offers.png'),
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: mobileNum,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.notifications),
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_sharp),
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.question_mark_rounded),
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                SizedBox(
                  height: 53,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
