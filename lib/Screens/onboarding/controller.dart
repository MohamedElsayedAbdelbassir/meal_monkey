import 'package:flutter/cupertino.dart';

class OnBoardingController {
  var images = ["onboarding1.png", "onboarding2.png", "onboarding3.png"];
  var titles = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  var hints = [
    "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office\nwherever you are",
    "Real time tracking of your food on the app\nonce you placed the order"
  ];

  int currentIndex = 0;

  changePage(value) {
    currentIndex = value;
  }
}
