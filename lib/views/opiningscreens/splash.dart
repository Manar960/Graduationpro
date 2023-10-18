import 'package:finalpro/constants.dart';
import 'package:flutter/material.dart';
import 'package:finalpro/views/opiningscreens/info.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreenView(
          navigateRoute: OnboardingScreen(),
          duration: 5000,
          imageSize: 130,
          text: "WHEELS WELL",
          textType: TextType.ColorizeAnimationText,
          textStyle: TextStyle(
            fontSize: 40.0,
          ),
          colors: [
            Color(0XFF1e81b0),
            Color(0XFFabdbe3),
            Color(0XFFeab676),
            kSecondaryColor,
          ],
          backgroundColor: Colors.white,
        ),
        Positioned(
          top: 120, // Adjust the top position to set the distance from the top
          left: 0,
          right: 0,
          child: Image.asset("assets/images/logo.png"),
        ),
      ],
    );
  }
}
