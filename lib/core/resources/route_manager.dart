import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/screens/on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/person/screens/person_page.dart';
import 'package:mini_nft_marketplace/features/search/screens/search_page.dart';
import 'package:mini_nft_marketplace/features/signin_page/screens/signin_page.dart';
import 'package:mini_nft_marketplace/features/signup_page/screens/signup_page.dart';
import 'package:mini_nft_marketplace/features/state/screens/state_page.dart';

class RouteManager {
  static Map<String,WidgetBuilder> routes={
    RouteName.kOnBoardingPage:(context )=> OnBoardingPage(),
    RouteName.kHomePage:(context )=> HomePage(),
    RouteName.kStatePage:(context) => StatePage(),
    RouteName.kSigninPage:(context) => SigninPage(),
    RouteName.kSignupPage:(context) => SignupPage(),
    RouteName.kSearchPage:(context) => SearchPage(),
    RouteName.kPersonPage:(context) => PersonPage(),
  };
}

class RouteName {
  static const String kOnBoardingPage="on_boarding_page";
  static const String kHomePage="home_page";
  static const String kStatePage="state_page";
  static const String kSigninPage="signin_page";
  static const String kSignupPage="signup_page";
  static const String kSearchPage="search_page";
  static const String kPersonPage="person_page";
}