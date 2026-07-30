import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/assets_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/fonts_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/string_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Image(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(AssetsManager.onBoardingBackgroundImage),),
              Container(
                padding: EdgeInsets.all(23),
                child: Column(
                  children: [
                    Text(
                      StringManager.TitleOnBoardingPage,
                      style: TextStyle(
                        color: ColorManager.kColorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize:  FontSize.f36,
                        fontFamily: FontsManager.cairoBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
    );
  }
}
