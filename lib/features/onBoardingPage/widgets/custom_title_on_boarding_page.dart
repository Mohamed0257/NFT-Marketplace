import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringManager.titleOnBoardingPage,
      style: TextStyle(
        color: ColorManager.kColorWhite,
        fontWeight: FontWeight.bold,
        fontSize: FontSize.f36,
        fontFamily: FontsManager.cairoBold,
      ),
    );
  }
}
