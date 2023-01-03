import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';
import '../../Widgets/Images/sizeable_image.dart';
import '../../Widgets/Texts/clickable_icon.dart';
import '../../Widgets/Texts/list_items.dart';
import '../../Shared/global.dart';

class AboutContentMobile extends StatelessWidget {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = 380;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Center(
          child: Column(
            children: [
              Container(
                width: width,
                decoration: Global.cardBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 10, top: 10),
                            child: GestureDetector(
                              onTap: () {
                                Global.launchURL(
                                    'https://www.instagram.com/bjpoyser/');
                              },
                              child: SizeableImage(
                                picName: 'about/me',
                                width: width,
                                hasBorder: true,
                              ).showCursorOnHover,
                            ),
                          ),
                          Text(
                            'Benoit Jamal Poyser Acuña',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          ),
                          Text(
                            'Game Designer & Developer',
                            style: TextStyle(fontSize: Global.linkFontSize),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Global.accentColor,
                            height: 3,
                            width: 425,
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Gamer and computer systems engineer with a personal emphasis on technical game design, born in Costa Rica, living in Florida, USA. Avid learner, willing to face challenges, and always giving my best in every situation.\n\nI want to learn many languages, discover music and get to know different cultures by traveling.',
                                  style: TextStyle(
                                      fontSize: Global.linkFontSize,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Languages',
                                    style: TextStyle(
                                        fontSize: Global.subtitleFontSize),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListItem(
                                        itemText: " Spanish (Native)",
                                        fontSize: Global.linkFontSize,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ListItem(
                                        itemText: " English (B2/C1)",
                                        fontSize: Global.linkFontSize,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ListItem(
                                        itemText: " French (A2)",
                                        fontSize: Global.linkFontSize,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Education',
                                    style: TextStyle(
                                        fontSize: Global.subtitleFontSize),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListItem(
                                          itemText: " M.Sc. Game Design",
                                          fontSize: Global.linkFontSize,
                                        ),
                                        ListItem(
                                          itemText:
                                              " Full Sail University, USA, 2022",
                                          fontSize: Global.itemFontSize,
                                          listSymbol: "-",
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ListItem(
                                          itemText:
                                              " B.Sc. in Computer Engineering",
                                          fontSize: Global.linkFontSize,
                                        ),
                                        ListItem(
                                          itemText:
                                              " Fidélitas University, CRC, 2021",
                                          fontSize: Global.itemFontSize,
                                          listSymbol: "-",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: width,
                      decoration: Global.cardBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Career Interests',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Container(
                              color: Global.accentColor,
                              height: 3,
                              width: 425,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 370,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText: "AAA Video Games"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText:
                                            "Gameplay/Engine Programming"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText: "Technical Game Design"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                      fontSize: Global.textFontSize,
                                      itemText: "Game Design",
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                      fontSize: Global.textFontSize,
                                      itemText: "Tools Development",
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                      fontSize: Global.textFontSize,
                                      itemText: "Technologies",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "C#",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Java",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Blender",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Unity 3D",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Blueprints",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Unreal Engine",
                                            listSymbol: "- ",
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: width,
                      decoration: Global.cardBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Personal Interests',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Container(
                              color: Global.accentColor,
                              height: 3,
                              width: 425,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 370,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText: "Competitive Video Games"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText: "Languages & Cultures"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                        fontSize: Global.textFontSize,
                                        itemText: "Photography"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                      fontSize: Global.textFontSize,
                                      itemText: "Traveling. I\'ve been in:",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Costa Rica",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Panama",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Mexico",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "USA",
                                            listSymbol: "- ",
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListItem(
                                      fontSize: Global.textFontSize,
                                      itemText: "Music:",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Guitar",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Ukulele",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Singing",
                                            listSymbol: "- ",
                                          ),
                                          ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Bass Guitar",
                                            listSymbol: "- ",
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: width,
                decoration: Global.cardBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClickableIcon(
                        icon: FontAwesomeIcons.instagram,
                        normalColor: Colors.black,
                        action: () {
                          Global.launchURL(
                              'https://www.instagram.com/bjpoyser/');
                        },
                      ),
                      SizedBox(width: 20),
                      ClickableIcon(
                          icon: FontAwesomeIcons.linkedin,
                          normalColor: Colors.black,
                          action: () {
                            Global.launchURL(
                                'https://www.linkedin.com/in/bjpoyser/');
                          }),
                      SizedBox(width: 20),
                      ClickableIcon(
                          icon: FontAwesomeIcons.graduationCap,
                          normalColor: Colors.black,
                          size: 45,
                          action: () {
                            Global.launchURL(
                                'https://express.adobe.com/page/j9EzXl3iA50tk/');
                          }),
                      SizedBox(width: 20),
                      ClickableIcon(
                          icon: FontAwesomeIcons.filePdf,
                          normalColor: Colors.black,
                          size: 40,
                          action: () {
                            Global.launchURL(
                                'https://drive.google.com/file/d/18ReKS49i_t0hyhD831LhXGVGXoL2CXm3/view?usp=sharing');
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
