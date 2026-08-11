import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 360,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        ColorManager.kColorPrimary,
                                        ColorManager.kColorPanafsigeLight,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 33,
                                              backgroundImage: AssetImage(
                                                "assets/images/tranding3.jpg",
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Mohamed Mostafa",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(width: 10),
                                                    Container(
                                                      color:
                                                          ColorManager.kColorGray,
                                                      width: 1.7,
                                                      height: 14,
                                                    ),
                                                    SizedBox(width: 10),
                                                    IconButton(onPressed: () {

                                                    }, icon: const Icon(
                                                      Icons.copy,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                      color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                                      ),
                                                    SizedBox(width: 10),
                                                    IconButton(onPressed: () {

                                                    }, icon: const Icon(
                                                        Icons.more_horiz_outlined,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                      color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                                      ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: ColorManager.kColorPrimary,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.blueGrey.withValues(alpha: 0.5),
                                child: const Text(
                                  "6568B5",
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: ColorManager.kColorWhite,
                                height: 0.2,
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "USD VALUE",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: ColorManager.kColorGray,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Icon(
                                            Icons.remove_red_eye,
                                            color: ColorManager.kColorGray,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                      Text('\$0.00'),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "NFTS",
                                        style: TextStyle(
                                          color: ColorManager.kColorGray,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text("0%"),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "TOKENS",
                                        style: TextStyle(
                                          color: ColorManager.kColorGray,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text("0%"),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {

                                  },
                                    icon: Column(
                                    children: [
                                      Text("Galleries"),
                                      SizedBox(height: 3),
                                      Container(
                                        color: ColorManager.kColorWhite,
                                        height: 1,
                                        width: 60,
                                      ),
                                    ],
                                  ),
                                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {

                                  },
                                    icon: Text(
                                      "Items",
                                      style: TextStyle(
                                        color: ColorManager.kColorGray,
                                      ),
                                    ),
                                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {

                                  },
                                    icon: Text(
                                      "Tokens",
                                      style: TextStyle(
                                        color: ColorManager.kColorGray,
                                      ),
                                    ),
                                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {

                                  },
                                    icon: Text(
                                      "Listings",
                                      style: TextStyle(
                                        color: ColorManager.kColorGray,
                                      ),
                                    ),
                                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                  ),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {

                                  },
                                    icon: Text(
                                      "Protofol",
                                      style: TextStyle(
                                        color: ColorManager.kColorGray,
                                      ),
                                    ),
                                    color: ColorManager.kColorWhite.withValues(alpha: 0.1),
                                  ),

                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/magic.jpeg",
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Feature your favorites",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Showcase your favorite NFTs with our new"
                                " galleries section. This tab is publicly"
                                " hidden until you add sections.",
                                style: TextStyle(
                                  color: ColorManager.kColorGray,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.resolveWith<Color>((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return ColorManager
                                                .kColorPanafsigeLight;
                                          }
                                          return ColorManager.kColorGray;
                                        }),
                                  ),
                                  child: Text(
                                    "Create a gallery",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
