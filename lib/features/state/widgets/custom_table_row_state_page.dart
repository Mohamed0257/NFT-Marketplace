import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/table_row_model.dart';

class CustomTableRowStatePage extends StatelessWidget {
  const CustomTableRowStatePage({super.key, required this.tableRowModel});
  final TableRowModel tableRowModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthValues.w310,
      padding: EdgeInsets.all(PaddingValues.p9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: WidthValues.w57,
                height: HeightValues.h39_64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${tableRowModel.num}',
                      style: TextStyle(color: ColorManager.kColorGray),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        BoarderRadiusValues.br10,
                      ),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(tableRowModel.image),
                        width: WidthValues.w39_64,
                        height: HeightValues.h39_64,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: WidthValues.w13),
              SizedBox(
                width: WidthValues.w115,
                height: HeightValues.h39_64,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tableRowModel.title,
                      style: TextStyle(
                        color: ColorManager.kColorWhite,
                        fontSize: FontSizeValues.fs15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "view info",
                      style: TextStyle(
                        fontSize: FontSizeValues.fs12,
                        color: ColorManager.kColorGray,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.currency_bitcoin_sharp,
                    color: ColorManager.kColorWhite,
                    size: 13,
                  ),
                  Text(
                    "${tableRowModel.count}",
                    style: TextStyle(
                      color: ColorManager.kColorWhite,
                      fontSize: FontSizeValues.fs13,
                    ),
                  ),
                ],
              ),
              Text(
                tableRowModel.rate,
                style: TextStyle(
                  color: tableRowModel.active
                      ? Colors.green
                      : ColorManager.kColorRed,
                  fontSize: FontSizeValues.fs12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
