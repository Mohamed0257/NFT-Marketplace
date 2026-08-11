import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_card_top_seller.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_card_tranding.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_how_new_Items.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_sub_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView(
        children: [
          SizedBox(
            height: HeightValues.h167_57,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCategoryHomePage(
                title: Constants.categoryList[index].title,
                image: Constants.categoryList[index].image,
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthValues.w9),
              itemCount: 3,
            ),
          ),
          SizedBox(height: HeightValues.h27),
          CustomSubTitle(title: StringManager.subTitleHomePage),
          SizedBox(height: 10),
          SizedBox(
            height: HeightValues.h194,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCardTranding(
                collectionModel: Constants.collectionList[index],
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthValues.w9),
              itemCount: 3,
            ),
          ),
          SizedBox(height: HeightValues.h27),
          CustomSubTitle(title: StringManager.topSellerHomePage),
          SizedBox(height: HeightValues.h7),
          SizedBox(
            height: HeightValues.h236,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCardTopSeller(
                topSellerModel: Constants.topSellerModel[index],
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthValues.w9),
              itemCount: 3,
            ),
          ),
          SizedBox(height: HeightValues.h27),
          CustomSubTitle(title: StringManager.howNewItemsHomePage),
          SizedBox(height: HeightValues.h7),
          SizedBox(
            height: HeightValues.h236,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomHowNewItems(
                howNewItemsModel: Constants.howNewItems[index],
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthValues.w9),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
