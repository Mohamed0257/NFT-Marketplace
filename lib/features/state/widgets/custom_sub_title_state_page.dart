import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/state/widgets/activity_sub_title_state_page.dart';

class CustomSubTitleStatePage extends StatelessWidget {
  const CustomSubTitleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: PaddingValues.p16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.kColorWhite,
            width: WidthValues.w0_2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p16),
            child: IconButton(onPressed: () {

            }, icon: CustomActivityStatePage(active: true, title: StringManager.ranking, iconData: Icons.stacked_bar_chart),
              hoverColor: ColorManager.kColorPanafsige.withValues(alpha: 0.15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p16),
            child: IconButton(onPressed: () {

            }, icon: CustomActivityStatePage(active: false, title: StringManager.activity, iconData: Icons.stacked_line_chart),
              hoverColor: ColorManager.kColorPanafsige.withValues(alpha: 0.15),
            ),
          ),
        ],
      ),
    );
  }
}
