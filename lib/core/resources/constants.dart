import 'package:mini_nft_marketplace/models/category_model.dart';
import 'package:mini_nft_marketplace/models/collection_model.dart';
import 'package:mini_nft_marketplace/models/how_new_items_model.dart';
import 'package:mini_nft_marketplace/models/table_row_model.dart';
import 'package:mini_nft_marketplace/models/table_row_model2.dart';
import 'package:mini_nft_marketplace/models/top_seller_model.dart';

import 'assets_manager.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel('Art', AssetsManager.carArtsHomapageImage),
    CategoryModel('Music', AssetsManager.carMusicHomapageImage),
    CategoryModel('Virtual', AssetsManager.carVirtualHomapageImage),
  ];
  static List<CollectionModel> collectionList = [
    CollectionModel(AssetsManager.trandingHomapageImage1, "3D Art", 200, true),
    CollectionModel(
      AssetsManager.trandingHomapageImage2,
      "Abstract Art",
      300,
      false,
    ),
    CollectionModel(
      AssetsManager.trandingHomapageImage3,
      "Portrait Art",
      400,
      true,
    ),
  ];
  static List<TopSellerModel> topSellerModel = [
    TopSellerModel(
      AssetsManager.topSellerHomapageImage1,
      "Abstract Pink",
      "abstract #2538",
      0.906,
      1800,
      true,
    ),
    TopSellerModel(
      AssetsManager.topSellerHomapageImage2,
      "Wave2",
      "abstract #5638",
      0.018,
      5325,
      false,
    ),
    TopSellerModel(
      AssetsManager.topSellerHomapageImage3,
      "Wavepi",
      "waval #5238",
      0.26,
      2000,
      true,
    ),
  ];
  static List<HowNewItemsModel> howNewItems = [
    HowNewItemsModel(
      AssetsManager.howNewItemsHomapageImage1,
      "Music",
      "mail #7342",
      0.46,
      200,
      false,
    ),
    HowNewItemsModel(
      AssetsManager.howNewItemsHomapageImage2,
      "Ball",
      "baalli #4800",
      0.003,
      200,
      true,
    ),
    HowNewItemsModel(
      AssetsManager.howNewItemsHomapageImage3,
      "Rang",
      "ring #7288",
      0.106,
      200,
      true,
    ),
  ];
  static List<TableRowModel> tableRowModel = [
    TableRowModel(
      1,
      AssetsManager.table1,
      "Azumi",
      200055.02,
      '3.99%',
      true,
    ),
    TableRowModel(
      2,
      AssetsManager.table2,
      "Habe Prime",
      180055.02,
      '33.79%',
      true,
    ),
    TableRowModel(
      3,
      AssetsManager.table3,
      "Cryto",
      900055.02,
      '6.56%',
      false,
    ),
    TableRowModel(
      4,
      AssetsManager.table4,
      "Api Clup",
      880055.02,
      '3.99%',
      true,
    ),
    TableRowModel(
      5,
      AssetsManager.table5,
      "Azumi",
      200055.02,
      '3.99%',
      true,
    ),
    TableRowModel(
      6,
      AssetsManager.table6,
      "Bat",
      100055.02,
      '3.99%',
      true,
    ),
    TableRowModel(
      7,
      AssetsManager.table7,
      "Mutant",
      900055.02,
      '3.99%',
      true,
    ),TableRowModel(
      8,
      AssetsManager.table8,
      "The Sandbox",
      900055.02,
      '-1.99%',
      true,
    ),
    TableRowModel(
      9,
      AssetsManager.table1,
      "Azumi",
      200055.02,
      '3.99%',
      true,
    ),
    TableRowModel(
      10,
      AssetsManager.table4,
      "Api Clup",
      880055.02,
      '3.99%',
      true,
    ),
  ];

static List<TableRowModel2> tableRowModel2 = [
    TableRowModel2("assets/images/table5.jpg",
      "Cash Cats",
      138.36,
      "+45%",
      true,),
    TableRowModel2("assets/images/table1.jpg",
      "Bat",
      121.36,
      "-35%",
      false,),TableRowModel2("assets/images/table6.jpg",
      "Vumie",
      164.36,
      "+71%",
      true,)
  ];
}
