import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';
import '../../../Widgets/Images/sizeable_image.dart';

class GuardianContentTablet extends StatefulWidget {
  @override
  _GuardianContentTabletState createState() => _GuardianContentTabletState();
}

class _GuardianContentTabletState extends State<GuardianContentTablet> {
  final ScrollController _scrollController = new ScrollController();
  bool isHover = false;
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
                    picName: 'logos/logo-dancejam',
                    projectTitle: 'Dance Jame - Relaunch',
                    titleContainerSize: 560,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDanceJam.mp4?alt=media&token=54b7eedf-da4b-4a5a-97eb-24ab0bcd1136',
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
                        Row(
                          children: [
                            Text(
                              'Dance Jam is a game of ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: '@Dave.xp',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://www.instagram.com/dave.xp/');
                                }),
                            Text(
                              ', developed by ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: '@SunnaStudio',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://www.instagram.com/sunnastudio/');
                                }),
                            Text(
                              ' and',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'relaunch in February, 2022.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Dance Jam is based in the classic memory game, but this time you have to match dances. This game has the cutest characters you\'ll ever see, different scenarios and skins!',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Earn accorns to unlock new dance moves and skins, and get the premium pack to get more characters, dance moves and environments.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        )
                      ],
                    ),
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
                        containerHeight: 340,
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
                      height: 450,
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 480,
                            title: 'Tap or Scan to Download',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 50.0, bottom: 20.0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              onHover: (e) => _mouseEnter(true),
                              onExit: (e) => _mouseEnter(false),
                              child: GestureDetector(
                                onTap: () {
                                  Global.launchURL('');
                                },
                                child: SizeableImage(
                                  picName: '/QR/QR_DJ',
                                  width: 285,
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
    smallImage(240, 'carousel/dj/dj-1'),
    smallImage(240, 'carousel/dj/dj-2'),
    smallImage(240, 'carousel/dj/dj-3'),
    smallImage(240, 'carousel/dj/dj-4'),
    smallImage(240, 'carousel/dj/dj-5'),
  ];

  final List<String> devList = [
    'Genre: Casual',
    'Engine: Unity 3D C#',
    'Platform: Android & IOS',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'UI Design',
    'Bug Fixing',
    'Assets Integration',
    'QA',
    'Functionality Integration'
  ];
}
