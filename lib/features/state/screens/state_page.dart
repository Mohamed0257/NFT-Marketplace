import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_category_state_page.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_sub_title_state_page.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_table_row_state_page.dart';
import 'package:mini_nft_marketplace/models/table_row_model.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height - 226;
    return Container(
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          CustomSubTitleStatePage(),
          SizedBox(height: HeightValues.h22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: CustomCategoryStatePage(
                  title: "All categories",
                  iconData: Icons.border_all,
                ),
                hoverColor: ColorManager.kColorPanafsige.withValues(alpha: 0.15),
              ),IconButton(
                onPressed: () {},
                icon: CustomCategoryStatePage(
                    title: "All Chaines",
                    iconData: Icons.link,
                  ),
                hoverColor: ColorManager.kColorPanafsige.withValues(alpha: 0.15),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: BlurValues.b10,
                sigmaY: BlurValues.b10,
              ),
              child: Container(
                color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                height: listHeight,
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 16),
                child: ListView.separated(
                  itemBuilder: (context, index) => IconButton(onPressed: () {

                  }, icon: CustomTableRowStatePage(
                    tableRowModel: TableRowModel(
                      Constants.tableRowModel[index].num,
                      Constants.tableRowModel[index].image,
                      Constants.tableRowModel[index].title,
                      Constants.tableRowModel[index].count,
                      Constants.tableRowModel[index].rate,
                      Constants.tableRowModel[index].active,
                    ),
                  ),
                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 13),
                  itemCount: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
