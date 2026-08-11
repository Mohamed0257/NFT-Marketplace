import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/home/screens/home.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_title_home_page.dart';
import 'package:mini_nft_marketplace/features/person/screens/person_page.dart';
import 'package:mini_nft_marketplace/features/search/screens/search_page.dart';
import 'package:mini_nft_marketplace/features/state/screens/state_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> w = [Home(), StatePage(), SearchPage(), PersonPage()];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedHome: () {
          index = 0;
          setState(() {});
        },
        onPressedState: () {
          index = 1;
          setState(() {});
        },
        onPressedSearch: () {
          index = 2;
          setState(() {});
        },
        onPressedPerson: () {
          index = 3;
          setState(() {});
        },
        widthScreen: widthScreen,
      ),
      appBar: index == 0
          ? AppBar(
              title: CustomTitleHomePage(),
              backgroundColor: Colors.transparent,
              centerTitle: true,
            )
          : index == 1
          ? AppBar(
              title: Text(
                StringManager.stats,
                style: TextStyle(
                  color: ColorManager.kColorWhite,
                  fontSize: FontSizeValues.fs25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: PaddingValues.p16),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: ColorManager.kColorWhite,
                    ),
                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              centerTitle: true,
            )
          : index == 2
          ? AppBar(
              centerTitle: true,
              title: TextFormField(
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorManager.kColorPrimary,
                  labelStyle: TextStyle(color: ColorManager.kColorWhite),
                  labelText: "Search OpenSea",
                  hintFadeDuration: Duration(seconds: 5),
                ),
              ),
              backgroundColor: Colors.transparent,
            )
          : AppBar(
              title: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, color: ColorManager.kColorBlack),
                    color: ColorManager.kColorBlack.withValues(alpha: 0.1),
                  ),
                ],
              ),
              backgroundColor: ColorManager.kColorPanafsigeLight,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: ColorManager.kColorBlack,
                    size: 20,
                  ),
                  color: ColorManager.kColorBlack.withValues(alpha: 0.1),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: ColorManager.kColorBlack,
                    size: 20,
                  ),
                  color: ColorManager.kColorBlack.withValues(alpha: 0.1),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage("assets/images/tranding3.jpg"),
                  ),
                  color: ColorManager.kColorBlack.withValues(alpha: 0.1),
                ),
                SizedBox(width: 10),
              ],
            ),
      backgroundColor: ColorManager.kColorPrimary,
      body: w[index],
    );
  }
}
