import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomActivityStatePage extends StatelessWidget {
  const CustomActivityStatePage({
    super.key,
    required this.active,
    required this.title,
    required this.iconData,
  });
  final bool active;
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              iconData,
              color: active
                  ? ColorManager.kColorWhite
                  : ColorManager.kColorGray,
            ),
            Text(
              title,
              style: TextStyle(
                color: active
                    ? ColorManager.kColorWhite
                    : ColorManager.kColorGray,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: PaddingValues.p16),
        if (active)
          Container(
            width: WidthValues.w106,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(BoarderRadiusValues.br20),
                topRight: Radius.circular(BoarderRadiusValues.br20),
              ),
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(151, 169, 246, 100),
                  width: WidthValues.w3_6,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(151, 169, 246, 100),
                  blurRadius: 16,
                  offset: Offset(0, -5),
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
