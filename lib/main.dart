import 'package:flutter/material.dart';
import 'generated/codegen_loader.g.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:meal_monkey/Screens/afterSplash/view.dart';
import 'package:meal_monkey/Screens/home/view.dart';
import 'package:meal_monkey/Screens/login/view.dart';
import 'package:meal_monkey/Screens/onboarding/view.dart';
import 'package:meal_monkey/Screens/splash/view.dart';

import 'Screens/after_reset/view.dart';
import 'Screens/new_password/view.dart';
import 'Screens/register/view.dart';
import 'Screens/reset_password/view.dart';
import 'helper/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      // assetLoader: CodegenLoader(),
      startLocale: Locale('en', 'US'),
      supportedLocales: [Locale('ar', 'SA'), Locale('en', 'US')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      child: Meal(),
    ),
  );
}

class Meal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(
            Color(0xffFC6011),
          ),
          platform: TargetPlatform.iOS,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.only(top: 17, bottom: 18)),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.only(top: 17, bottom: 18),
                side: BorderSide(color: Color(0xffFC6011), width: 1)),
          ),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(28))),
              filled: true,
              fillColor: Color(0xffF2F2F2)),
        ),
        home: SplashScreen()
        //  PageView(
        //   children: [
        //     SplashScreen(),
        //     AfterSplashScreen(),
        //     LoginScreen(),
        //     RegisterScreen(),
        //     NewPasswordScreen(),
        //     ResetPasswordScreen(),
        //     AfterResetScreen(),
        //     OnBoardingScreen(),
        //     HomeScreen()
        //   ],
        // ),
        );
  }
}
