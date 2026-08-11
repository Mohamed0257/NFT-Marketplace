import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/search/widgets/custom_table_row_search_page.dart';
import 'package:mini_nft_marketplace/models/table_row_model2.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kColorPrimary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {

                  }, icon: Container(
                    width: 45,
                    height: 30,
                    color: Colors.grey.withValues(alpha: 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.select_all,
                          color: ColorManager.kColorWhite,
                          size: 13,
                        ),
                        Text(
                          "All",
                          style: TextStyle(
                            color: ColorManager.kColorWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                  IconButton(onPressed: () {

                  }, icon: SizedBox(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.collections,
                          color: ColorManager.kColorWhite,
                          size: 13,
                        ),
                        Text(
                          "Collections",
                          style: TextStyle(
                            color: ColorManager.kColorWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                  IconButton(onPressed: () {

                  }, icon: SizedBox(
                    width: 65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.currency_bitcoin_sharp,
                          color: ColorManager.kColorWhite,
                          size: 13,
                        ),
                        Text(
                          "Coins",
                          style: TextStyle(
                            color: ColorManager.kColorWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                  IconButton(onPressed: () {

                  }, icon: SizedBox(
                    width: 73,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.image_outlined,
                          color: ColorManager.kColorWhite,
                          size: 13,
                        ),
                        Text(
                          "Images",
                          style: TextStyle(
                            color: ColorManager.kColorWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorManager.kColorWhite,
                      width: WidthValues.w0_2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "TRENDING COLLECTION",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: BlurValues.b10,
                    sigmaY: BlurValues.b10,
                  ),
                  child: Container(
                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                    height: 308,
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 16),
                    child: ListView.separated(
                      itemBuilder: (context, index) => IconButton(onPressed: () {

                      }, icon: CustomTableRowStatePage(
                          tableRowModel2: TableRowModel2(
                            Constants.tableRowModel2[index].image,
                            Constants.tableRowModel2[index].title,
                            Constants.tableRowModel2[index].count,
                            Constants.tableRowModel2[index].rate,
                            Constants.tableRowModel2[index].active,
                          )
                      ),
                        color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemCount: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
