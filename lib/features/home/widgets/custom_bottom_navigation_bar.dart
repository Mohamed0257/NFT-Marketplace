import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.widthScreen,
    required this.onPressedState,
    required this.onPressedHome,
    required this.onPressedSearch,
    required this.onPressedPerson,
  });
  final double widthScreen;
  final VoidCallback onPressedState;
  final VoidCallback onPressedHome;
  final VoidCallback onPressedSearch;
  final VoidCallback onPressedPerson;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightValues.h120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: widthScreen,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(BoarderRadiusValues.br40),
                  topRight: Radius.circular(BoarderRadiusValues.br40),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: BlurValues.b100,
                    sigmaY: BlurValues.b100,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(PaddingValues.p9),
                    height: HeightValues.h90,
                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: onPressedHome,
                          icon: const Icon(
                            Icons.home,
                            color: ColorManager.kColorPrimary,
                          ),
                          color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                        ),
                        IconButton(
                          onPressed: onPressedState,
                          icon: const Icon(
                            Icons.stacked_bar_chart,
                            color: ColorManager.kColorPrimary,
                          ),
                          color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                        ),
                        Container(width: WidthValues.w39),
                        IconButton(
                          onPressed: onPressedSearch,
                          icon: const Icon(
                            Icons.search,
                            color: ColorManager.kColorPrimary,
                          ),
                          color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                        ),
                        IconButton(
                          onPressed: onPressedPerson,
                          icon: const Icon(
                            Icons.person,
                            color: ColorManager.kColorPrimary,
                          ),
                          color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {

          }, icon: Positioned(
            top: 0,
            child: Container(
              decoration: ShapeDecoration(
                color: ColorManager.kColorWhite.withValues(alpha: 0.5),
                shape: StarBorder.polygon(sides: 6, pointRounding: 0.4),
              ),
              height: HeightValues.h70,
              width: WidthValues.w70,
              child: Icon(
                Icons.add,
                size: SizeValues.s40,
                color: ColorManager.kColorWhite,
              ),
            ),
          ),
          color: ColorManager.kColorWhite.withValues(alpha: 0.1),
          ),
        ],
      ),
    );
  }
}
