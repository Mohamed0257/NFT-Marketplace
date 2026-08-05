import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ClipRRect(
      borderRadius: BorderRadius.circular(BoarderRadiusValues.br20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: BlurValues.b10,sigmaY: BlurValues.b10,
        ),
        child: Container(
          padding: EdgeInsets.all(PaddingValues.p16),
          width: double.infinity,
          height: HeightValues.h190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(BoarderRadiusValues.br10),
              color: ColorManager.kColorPanafsigeLight.withValues(alpha: 0.1)
          ),
          child: Column(
            children: [
              const Text(StringManager.titleCardOnBoardingPage,style: TextStyle(color: ColorManager.kColorWhite,fontSize: FontSizeValues.fs25,fontWeight: FontWeight.bold),),
              const SizedBox(height: HeightValues.h5,),
              Text(StringManager.descCardOnBoardingPage,style: TextStyle(color: ColorManager.kColorGray350 ,fontSize: FontSizeValues.fs12),textAlign: TextAlign.center,),
              const SizedBox(height: HeightValues.h22),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(BoarderRadiusValues.br40),

                ),
                width: WidthValues.w198,
                height: HeightValues.h38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(BoarderRadiusValues.br40),
                  child:BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 67,sigmaY: 67,
                    ),
                    child: MaterialButton(
                        color: Color.fromRGBO(151, 169, 246, 0.5),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, RouteName.kHomePage);
                        }, child: Text(StringManager.buttonCardOnBoardingPage,style: TextStyle(color: Colors.white),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
