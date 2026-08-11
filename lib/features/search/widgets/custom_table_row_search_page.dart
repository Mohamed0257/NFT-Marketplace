import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/table_row_model2.dart';

class CustomTableRowStatePage extends StatelessWidget {
  const CustomTableRowStatePage({super.key,required this.tableRowModel2});
  final TableRowModel2 tableRowModel2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthValues.w310,
      padding: EdgeInsets.all(PaddingValues.p9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: WidthValues.w57,
                height: HeightValues.h39_64,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(
                    BoarderRadiusValues.br10,
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(tableRowModel2.image),
                    width: WidthValues.w39_64,
                    height: HeightValues.h39_64,
                  ),
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
                      tableRowModel2.title,
                      style: TextStyle(
                        color: ColorManager.kColorWhite,
                        fontSize: FontSizeValues.fs15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.currency_bitcoin_sharp,
                              color: ColorManager.kColorWhite,
                              size: 12,
                            ),
                            Text(
                              "${tableRowModel2.count}",
                              style: TextStyle(
                                color: ColorManager.kColorWhite,
                                fontSize: FontSizeValues.fs12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Text(
                          tableRowModel2.rate,
                          style: TextStyle(
                            color: tableRowModel2.active
                                ? Colors.green
                                : ColorManager.kColorRed,
                            fontSize: FontSizeValues.fs12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
