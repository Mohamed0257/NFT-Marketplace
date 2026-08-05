import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/widgets/custom_card_on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoardingPage/widgets/custom_title_on_boarding_page.dart';


class CustomComponantOnBoardingPage extends StatelessWidget {
  const CustomComponantOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PaddingValues.p25),
      child: Column(
        children: [
          const SizedBox(height: HeightValues.h60,),
          const CustomTitleOnBoardingPage(),
          const Spacer(),
          const CustomCardOnBoardingPage(),
          const SizedBox(height: HeightValues.h60,),
        ],
      ),
    );
  }
}
