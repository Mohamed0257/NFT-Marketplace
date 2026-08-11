import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/collection_model.dart';

class CustomCardTranding extends StatelessWidget {
  const CustomCardTranding({super.key, required this.collectionModel});
  final CollectionModel collectionModel;
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
            alignment: Alignment.center,
            padding: EdgeInsets.all(PaddingValues.p9),
            width: WidthValues.w157,
            height: HeightValues.h194,
            decoration: BoxDecoration(
              color: ColorManager.kColorPanafsigeLight.withValues(alpha: 0.1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(BoarderRadiusValues.br20),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(collectionModel.image),
                    height: HeightValues.h139,
                    width: WidthValues.w139,
                  ),
                ),
                SizedBox(height: HeightValues.h9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      collectionModel.title,
                      style: TextStyle(color: ColorManager.kColorWhite),
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: collectionModel.activeLike
                              ? ColorManager.kColorRed
                              : ColorManager.kColorGray,
                        ),
                        Text(
                          '${collectionModel.countLike}',
                          style: TextStyle(color: ColorManager.kColorWhite),
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
