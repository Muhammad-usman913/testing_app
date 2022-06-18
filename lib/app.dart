
import 'package:flutter/material.dart';
import 'package:recipe_app/dashboard/dashborad_screen.dart';
import 'package:recipe_app/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
      child: SafeArea(child: DashboardScreen())
    );
    // return ScreenUtilInit(
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   designSize: Size(375,812),
    //   builder: (child) => MaterialApp(
    //     home:  SplashScreen(),
    //   ),
    // );
  }
}
