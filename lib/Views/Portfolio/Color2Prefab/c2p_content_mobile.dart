import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Navigation/NavigationService.dart';
import '../../../Navigation/locator.dart';
import '../../../Navigation/router.dart';
import '../../../Shared/global.dart';
import '../../../Widgets/Cards/icon_card.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Cards/title_card.dart';
import '../../../Widgets/Images/carousel_with_indicator.dart';
import '../../../Widgets/Texts/simple_link.dart';

class Color2PrefabContentMobile extends StatefulWidget {
  @override
  _Color2PrefabContentMobileState createState() =>
      _Color2PrefabContentMobileState();
}

class _Color2PrefabContentMobileState extends State<Color2PrefabContentMobile> {
  final ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    double width = 380;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: 100,
                  decoration: Global.cardBoxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Color 2 Prefab',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        'Unity3D\'s Tool',
                        style: TextStyle(
                            fontSize: Global.subtitleFontSize,
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FColor2Prefab.mp4?alt=media&token=1a2c226b-7737-40bd-9f1d-0da6ebe77647',
                  ),
                ),
                Container(
                  width: width,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'If you need to translate an image to a level this is your tool!\n\nColor 2 Prefab helps you to generate a level from an image, saving you time.',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'I made this tool because when I was working on',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          ),
                          Row(
                            children: [
                              SimpleLink(
                                  text: 'Save The Purple Frog!',
                                  fontSize: Global.subtitleFontSize,
                                  action: () {
                                    locator<NavigationService>()
                                        .navigateTo(PurpleFrogRoute);
                                  }),
                              Text(
                                ' I needed',
                                style: TextStyle(
                                    fontSize: Global.subtitleFontSize),
                              )
                            ],
                          ),
                          Text(
                            'to paint a Level first and then recreate it in Unity3D, but that was taking a long time. Since I use this tool, everything is easier and faster!\n\nThis tool is recommended for 2D Platformers, but you can use it to generate 3D levels of any other genre since you only have to assign a prefab to a color.',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerWidth: width,
                        titleSize: 25,
                        listSize: Global.textFontSize,
                      ),
                      SizedBox(height: 40),
                      ListContainer(
                        listTitle: 'Resposibilities',
                        itemsList: dutiesList,
                        containerWidth: width,
                        titleSize: 25,
                        listSize: Global.textFontSize,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: width,
                            title: 'Results',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Container(
                            width: width,
                            child: CarouselWithIndicator(
                              imgList: imgList,
                              height: 500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Container(
                        decoration: Global.cardBoxDecoration,
                        child: IconCard(
                          icon: FontAwesomeIcons.internetExplorer,
                          link:
                              'https://assetstore.unity.com/packages/tools/level-design/color-2-prefab-193922',
                          title: 'Open in Asset Store',
                          iconSize: 150,
                          isMobile: true,
                          containerSize: width,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Widget> imgList = [
    smallImage(300, 'carousel/c2p/c2p-1'),
    smallImage(300, 'carousel/c2p/c2p-2'),
    smallImage(300, 'carousel/c2p/c2p-3'),
  ];

  final List<String> devList = [
    'Genre: Level Design Tool',
    'Framework: Unity Editor',
    'Engine: Unity 3D'
  ];

  final List<String> dutiesList = [
    'Programming',
    'UI/UX Design',
    'User Manual',
  ];
}
