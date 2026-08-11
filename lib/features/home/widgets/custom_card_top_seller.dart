import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/top_seller_model.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({super.key, required this.topSellerModel});
  final TopSellerModel topSellerModel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(BoarderRadiusValues.br20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: BlurValues.b100,
            sigmaY: BlurValues.b100,
          ),
          child: Container(
            padding: EdgeInsets.all(PaddingValues.p9),
            width: WidthValues.w157,

            height: HeightValues.h236,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(BoarderRadiusValues.br20),
              color: ColorManager.kColorPanafsigeLight.withValues(alpha: 0.1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(topSellerModel.image),
                    height: HeightValues.h139,
                    width: WidthValues.w139,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  topSellerModel.title,
                  style: TextStyle(
                    color: ColorManager.kColorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizeValues.fs12,
                  ),
                ),
                Text(
                  topSellerModel.supTitle,
                  style: TextStyle(
                    color: ColorManager.kColorGray,
                    fontSize: 11,
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.bolt_fill,
                          color: CupertinoColors.inactiveGray,
                        ),
                        Text(
                          '${topSellerModel.count1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: topSellerModel.activeLike
                              ? ColorManager.kColorRed
                              : ColorManager.kColorGray,
                        ),
                        Text(
                          "${topSellerModel.countLike}",
                          style: TextStyle(color: Colors.white38),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
