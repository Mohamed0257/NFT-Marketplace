import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_nft_marketplace/core/resourses/string_manager.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(BoarderRadius.br10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: BlurManager.b10,sigmaY: BlurManager.b10,
        ),
        child: Container(
          padding: EdgeInsets.all(PaddingManager.p16),
          width: double.infinity,
          height: HeightManager.h190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(BoarderRadius.br10),
              color: ColorManager.kColorPanafsigeLight.withValues(alpha: 0.1)
          ),
          child: Column(
            children: [
              const Text(StringManager.TitleCardOnBoardingPage,style: TextStyle(color: ColorManager.kColorWhite,fontSize: FontSizeManager.fs22,fontWeight: FontWeight.bold),),
              const SizedBox(height: HeightManager.h5,),
              Text(StringManager.DescCardOnBoardingPage,style: TextStyle(color: ColorManager.kColorGray350 ,fontSize: FontSizeManager.fs12),textAlign: TextAlign.center,),
              const SizedBox(height: HeightManager.h22),
              Container(
                width: WidthManager.w198,
                height: HeightManager.h38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(BoarderRadius.br40),
                  child:BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: BlurManager.b100,sigmaY: BlurManager.b100,
                    ),
                    child: MaterialButton(
                        color: ColorManager.kColorPanafsige,
                        onPressed: () {

                        }, child: Text(StringManager.ButtonCardOnBoardingPage,style: TextStyle(color: Colors.white),)),
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
