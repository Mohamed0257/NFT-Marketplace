import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/fonts_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/string_manager.dart';



class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringManager.TitleOnBoardingPage,
      style: TextStyle(
        color: ColorManager.kColorWhite,
        fontWeight: FontWeight.bold,
        fontSize:  FontSize.f36,
        fontFamily: FontsManager.cairoBold,
      ),
    );
  }
}
