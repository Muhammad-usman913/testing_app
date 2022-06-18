import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/screens/login_screen.dart';
import 'package:recipe_app/screens/signup_screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    const delay = const Duration(seconds: 2);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return LoginScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 812.h,
            width: 375.w,
            child: Center(
              child: Image.asset('assets/images/Logo2.png')
            ),
            decoration: new BoxDecoration(
              color: const Color(0xff00F0F8FF),
              image: new DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage('assets/images/splashscreen_background.jpeg')
              ),
            ),
          ),
        )
      ),
    );
  }
}

// Widget splashScreenIcon() {
//   String iconPath = "assets/icons/splash_screen_icon.svg";
//   return SvgPicture.asset(
//     iconPath,
//   );
// }
