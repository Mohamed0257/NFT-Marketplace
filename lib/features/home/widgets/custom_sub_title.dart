import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerStart,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p16,vertical: 8),
        child: Text(
          title,
          style: const TextStyle(
            color: ColorManager.kColorWhite,
            fontSize: FontSizeValues.fs17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
