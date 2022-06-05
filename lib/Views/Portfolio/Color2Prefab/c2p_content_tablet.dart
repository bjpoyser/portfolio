import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Navigation/NavigationService.dart';
import '../../../Navigation/locator.dart';
import '../../../Navigation/router.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Cards/project_header.dart';
import '../../../Shared/global.dart';
import '../../../Widgets/Cards/title_card.dart';

class Color2PrefabContentTablet extends StatefulWidget {
  @override
  _Color2PrefabContentTabletState createState() =>
      _Color2PrefabContentTabletState();
}

class _Color2PrefabContentTabletState extends State<Color2PrefabContentTablet> {
  bool isHover = false;
  final ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    double width = 730;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: 750,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Container(
                  width: width,
                  child: ProjectHeader(
                    picName: 'logos/logo-c2p',
                    projectTitle: 'Color 2 Prefab (Unity Tool)',
                    titleContainerSize: 560,
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
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'If you need to translate an image to a level this is your tool!\n\nColor 2 Prefab helps you to generate a level from an image, saving you time.',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'I made this tool because when I was working on ',
                                style: TextStyle(
                                    fontSize: Global.subtitleFontSize),
                              ),
                              SimpleLink(
                                  text: 'Save The Purple Frog!',
                                  fontSize: Global.subtitleFontSize,
                                  action: () {
                                    locator<NavigationService>()
                                        .navigateTo(PurpleFrogRoute);
                                  })
                            ],
                          ),
                          Text(
                            'I needed to paint a Level first and then recreate it in Unity3D, but that was taking a long time. Since I use this tool, everything is easier and faster!\n\nThis tool is recommended for 2D Platformers, but you can use it to generate 3D levels of any other genre since you only have to assign a prefab to a color.',
                            style: TextStyle(fontSize: Global.subtitleFontSize),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerWidth: 350,
                      ),
                      ListContainer(
                        listTitle: 'Resposibilities',
                        itemsList: dutiesList,
                        containerWidth: 350,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 230,
                            title: 'Results',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Container(
                            width: 230,
                            child: CarouselWithIndicator(
                              imgList: imgList,
                              height: 330,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 480,
                            title:
                                'Tap to Download or Scan to see it in the Store',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              onHover: (e) => _mouseEnter(true),
                              onExit: (e) => _mouseEnter(false),
                              child: GestureDetector(
                                onTap: () {
                                  Global.launchURL(
                                      'https://assetstore.unity.com/packages/tools/level-design/color-2-prefab-193922');
                                },
                                child: SizeableImage(
                                  picName: '/QR/c2p-web',
                                  width: 360,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }

  final List<Widget> imgList = [
    smallImage(240, 'carousel/c2p/c2p-1'),
    smallImage(240, 'carousel/c2p/c2p-2'),
    smallImage(240, 'carousel/c2p/c2p-3'),
  ];

  final List<String> devList = [
    'Framework: Unity Editor',
    'Engine: Unity 3D C#',
    'Type: Level Design Tool',
  ];

  final List<String> dutiesList = [
    'Programming',
    'UI/UX Design',
    'User Manual',
  ];
}
