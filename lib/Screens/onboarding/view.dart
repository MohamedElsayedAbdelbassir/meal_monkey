import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/home/view.dart';
import 'package:meal_monkey/Screens/onboarding/controller.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(34),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              height: 294,
              child: PageView(
                onPageChanged: (value) {
                  controller.changePage(value);
                  setState(() {});
                },
                children: List.generate(
                  controller.images.length,
                  (index) => Image.asset(
                    "images/" + controller.images[controller.currentIndex],
                    width: 225.44,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                (index) => Container(
                  margin: EdgeInsetsDirectional.only(start: 5),
                  height: 8,
                  width: index == controller.currentIndex ? 20 : 8,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(25),
                    color: Color(index == controller.currentIndex
                        ? 0xffFC6011
                        : 0xffD6D6D6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              controller.titles[controller.currentIndex],
              style: TextStyle(fontSize: 28, color: Color(0xff4A4B4D)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              controller.hints[controller.currentIndex],
              style: TextStyle(fontSize: 13, color: Color(0xff7C7D7E)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            controller.currentIndex == 2
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                          (route) => true);
                    },
                    child: Text("Finish"))
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
