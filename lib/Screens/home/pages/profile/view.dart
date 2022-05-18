import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  var name = TextEditingController(text: 'Emilia Clarke');
  var mail = TextEditingController(text: 'emiliaclarke@email.com');

  var mobileNum = TextEditingController(text: 'emiliaclarke@email.com');
  var address = TextEditingController(text: 'No 23, 6th Lane, Colombo 03');
  var pass = TextEditingController(text: '**************');
  var confirmPass = TextEditingController(text: '**************');

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
                      "Profile",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shopping_cart)
                  ],
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/Logo.png'),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: 13,
                    ),
                    label: Text(
                      'Edit Profile',
                      style: TextStyle(color: Color(0xffFC6011), fontSize: 10),
                    )),
                Text(
                  'Hi there Emilia!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 11, color: Color(0xff7C7D7E)),
                ),
                SizedBox(
                  height: 47,
                ),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: mail,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: mobileNum,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Mobile No',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  controller: confirmPass,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(
                        start: 34, top: 18, bottom: 19),
                    labelText: 'Confirm Password',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(
                      //         builder: (context) => OnBoardingScreen()),
                      //     (route) => true);
                    },
                    child: Text('Save'),
                  ),
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
