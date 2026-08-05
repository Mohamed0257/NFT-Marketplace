import 'package:mini_nft_marketplace/models/category_model.dart';
import 'package:mini_nft_marketplace/models/collection_model.dart';
import 'package:mini_nft_marketplace/models/how_new_items_model.dart';
import 'package:mini_nft_marketplace/models/top_seller_model.dart';

import 'assets_manager.dart';

class Constants {
  static List<CategoryModel> categoryList=[
    CategoryModel('Art', AssetsManager.carArtsHomapageImage),
    CategoryModel('Music', AssetsManager.carMusicHomapageImage),
    CategoryModel('Virtual', AssetsManager.carVirtualHomapageImage),
  ];static List<CollectionModel> collectionList=[
    CollectionModel(AssetsManager.trandingHomapageImage1, "3D Art", 200, true),
    CollectionModel(AssetsManager.trandingHomapageImage2, "Abstract Art", 300, false),
    CollectionModel(AssetsManager.trandingHomapageImage3, "Portrait Art", 400, true),
  ];static List<TopSellerModel> topSellerModel=[
    TopSellerModel(AssetsManager.topSellerHomapageImage1 , "Abstract Pink", "abstract #2538", 0.906, 1800, true),
    TopSellerModel(AssetsManager.topSellerHomapageImage2 , "Wave2", "abstract #5638", 0.018, 5325, false),
    TopSellerModel(AssetsManager.topSellerHomapageImage3 , "Wavepi", "waval #5238", 0.26, 2000, true),
  ];static List<HowNewItemsModel> howNewItems=[
    HowNewItemsModel(AssetsManager.howNewItemsHomapageImage1 , "Music", "mail #7342", 0.46, 200, false),
    HowNewItemsModel(AssetsManager.howNewItemsHomapageImage2 , "Ball", "baalli #4800", 0.003, 200, true),
    HowNewItemsModel(AssetsManager.howNewItemsHomapageImage3 , "Rang", "ring #7288", 0.106, 200, true),
  ];

}