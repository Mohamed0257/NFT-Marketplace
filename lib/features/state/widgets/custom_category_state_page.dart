import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomCategoryStatePage extends StatelessWidget {
  const CustomCategoryStatePage({
    super.key,
    required this.title,
    required this.iconData,
  });
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightValues.h40,
      width: WidthValues.w149,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.kColorPanafsige),
        borderRadius: BorderRadius.circular(BoarderRadiusValues.br20),
        color: ColorManager.kColorBlack.withValues(alpha: .11),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(iconData, color: ColorManager.kColorGray, size: 12),
          Text(
            title,
            style: TextStyle(
              color: ColorManager.kColorWhite,
              fontSize: FontSizeValues.fs12,
            ),
          ),
          Icon(Icons.arrow_drop_down_sharp, color: ColorManager.kColorGray),
        ],
      ),
    );
  }
}
