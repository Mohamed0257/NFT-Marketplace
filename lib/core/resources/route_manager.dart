import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/screens/on_boarding_page.dart';

class RouteManager {
  static Map<String,WidgetBuilder> routes={
    RouteName.kOnBoardingPage:(context )=> OnBoardingPage(),
    RouteName.kHomePage:(context )=> HomePage(),
  };
}

class RouteName {
  static const String kOnBoardingPage="on_boarding_page";
  static const String kHomePage="home_page";
}