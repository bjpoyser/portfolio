import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:portfolio/Widgets/Texts/clickable_icon.dart';
import 'package:portfolio/Widgets/Texts/list_items.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class AboutContentDesktop extends StatefulWidget {
  @override
  _AboutContentDesktopState createState() => _AboutContentDesktopState();
}

class _AboutContentDesktopState extends State<AboutContentDesktop> {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SilhouetteContainer(
          width: 800,
          picName: 'rocket',
          padding: const EdgeInsets.only(top: 80, right: 200),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 800,
                    decoration: Global.cardBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 45.0,
                                    right: 40.0,
                                    bottom: 5,
                                    top: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Global.launchURL(
                                        'https://www.instagram.com/bjpoyser/');
                                  },
                                  child: SizeableImage(
                                    picName: 'about/me',
                                    width: 250,
                                    hasBorder: true,
                                  ).showCursorOnHover,
                                ),
                              ),
                              Text('Benoit Jamal Poyser Acuña',
                                  style: TextStyle(
                                      fontSize: Global.subtitleFontSize)),
                              Text('Game Designer & Developer',
                                  style:
                                      TextStyle(fontSize: Global.linkFontSize)),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClickableIcon(
                                    icon: FontAwesomeIcons.instagram,
                                    action: () {
                                      Global.launchURL(
                                          'https://www.instagram.com/bjpoyser/');
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  ClickableIcon(
                                      icon: FontAwesomeIcons.linkedin,
                                      action: () {
                                        Global.launchURL(
                                            'https://www.linkedin.com/in/bjpoyser/');
                                      }),
                                  SizedBox(width: 20),
                                  ClickableIcon(
                                      icon: FontAwesomeIcons.github,
                                      size: 45,
                                      action: () {
                                        Global.launchURL(
                                            'https://github.com/bjpoyser');
                                      }),
                                  SizedBox(width: 20),
                                  ClickableIcon(
                                      icon: FontAwesomeIcons.filePdf,
                                      size: 40,
                                      action: () {
                                        Global.launchURL(
                                            'https://drive.google.com/file/d/1Tus8-_ZLWMcggrjeE4xffesnHjMXGtxb/view?usp=share_link');
                                      }),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('About Me',
                                  style: TextStyle(
                                      fontSize: Global.title1FontSize)),
                              SizedBox(height: 5),
                              Container(
                                color: Global.accentColor,
                                height: 3,
                                width: 425,
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 415,
                                child: Column(
                                  children: [
                                    Text(
                                      'Gamer and computer systems engineer with a personal emphasis on technical game design, born in Costa Rica. Avid learner, willing to face challenges, and always giving my best in every situation.\n\nI want to learn many languages, discover music and get to know different cultures by traveling.',
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
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Languages',
                                        style: TextStyle(
                                            fontSize: Global.subtitleFontSize),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            itemText: " English (C1)",
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
                                    width: 30,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, top: 1),
                                              child: ListItem(
                                                itemText:
                                                    " Full Sail University, USA, 2022",
                                                fontSize: Global.itemFontSize,
                                                listSymbol: "-",
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            ListItem(
                                              itemText:
                                                  " B.Sc. in Computer Engineering",
                                              fontSize: Global.linkFontSize,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, top: 1),
                                              child: ListItem(
                                                itemText:
                                                    " Fidélitas University, CRC, 2021",
                                                fontSize: Global.itemFontSize,
                                                listSymbol: "-",
                                              ),
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
                    height: 60,
                  ),
                  Container(
                    width: 800,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 370,
                          decoration: Global.cardBoxDecoration,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    fontSize: Global.title2FontSize,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    color: Global.accentColor,
                                    height: 3,
                                    width: 300,
                                  ),
                                ),
                                Container(
                                  width: 370,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 35,
                                      vertical: 5,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText: "Gameplay Programming"),
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
                                            itemText: "Shipped Video Games"),
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
                                          itemText: "Game Design",
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ListItem(
                                          fontSize: Global.textFontSize,
                                          itemText: "Technologies",
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ListItem(
                                                fontSize: Global.textFontSize,
                                                itemText: "Jira",
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
                                              ListItem(
                                                fontSize: Global.textFontSize,
                                                itemText: "C#, C++ & Java",
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
                        Container(
                          width: 370,
                          decoration: Global.cardBoxDecoration,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Personal Interests',
                                  style: TextStyle(
                                    fontSize: Global.title2FontSize,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    color: Global.accentColor,
                                    height: 3,
                                    width: 300,
                                  ),
                                ),
                                Container(
                                  width: 370,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 35,
                                      vertical: 5,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListItem(
                                            fontSize: Global.textFontSize,
                                            itemText:
                                                "Competitive Video Games"),
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
                                          padding:
                                              const EdgeInsets.only(left: 20),
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
                                          padding:
                                              const EdgeInsets.only(left: 20),
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
