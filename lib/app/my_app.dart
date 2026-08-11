import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.kColorPrimary,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: ColorManager.kColorWhite),
          bodyMedium: TextStyle(color: ColorManager.kColorWhite),
          bodySmall: TextStyle(color: ColorManager.kColorWhite),
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: RouteManager.routes,
      initialRoute: RouteName.kOnBoardingPage,
    );
  }
}
