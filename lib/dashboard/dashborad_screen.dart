import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/dashboard/navigator_items.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
      int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigatorItems[currentIndex].screen,

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: Offset(10, -12)),
          ],
        ),
        child: Container(
          height: 90.h,
          width: 375.w,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.white,
            iconSize: 24,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor:  Colors.greenAccent,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedItemColor: Colors.black,
            items: navigatorItems.map((e) {
              return getNavigationBarItem(
                  index: e.index, iconPath: e.iconPath);
            }).toList(),
          ),
        ),
      ),

    );
  }

      BottomNavigationBarItem getNavigationBarItem(
          {String? iconPath, int? index}) {
        Color iconColor =
        index == currentIndex ? Colors.greenAccent : Colors.black;
        return BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset(
            iconPath!,
            color: iconColor,
            height: 24,
            width: 24,
              ),

        );
      }
}
