import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/navpages/carousal_receipe_screen.dart';
import 'package:recipe_app/navpages/kitchen_screen.dart';
import 'package:recipe_app/navpages/search_screen.dart';

class NavigatorItem{
  //late Icon icon;
  late final String iconPath;
  late final int index;
  late final Widget screen;
 NavigatorItem(this.iconPath,this.index,this.screen);
}
// Icon(Icons.search),
// Icon(Icons.view_carousel_outlined)
List<NavigatorItem> navigatorItems = [
  NavigatorItem('assets/icons/search_icon.svg',0, SearchScreen()),
  NavigatorItem('assets/icons/carousel-slideshow_icon.svg',1, CarousalReceipeScreen()),
  NavigatorItem('assets/icons/cooking-chef-cap.svg',2, KitchenScreen())
];