import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/assets_manager.dart';

class CustomOnBoardingBackgroundPage extends StatelessWidget {
  const CustomOnBoardingBackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(AssetsManager.onBoardingBackgroundImage),);
  }
}
