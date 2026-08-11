import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/widgets/custom_componant_on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/widgets/custom_on_boarding_background_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomOnBoardingBackgroundPage(),
            const CustomComponantOnBoardingPage(),
          ],
        ),
      ),
    );
  }
}
