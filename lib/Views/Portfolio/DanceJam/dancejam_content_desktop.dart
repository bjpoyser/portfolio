import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';

class DanceJamContentDesktop extends StatefulWidget {
  @override
  _DanceJamContentDesktopState createState() => _DanceJamContentDesktopState();
}

class _DanceJamContentDesktopState extends State<DanceJamContentDesktop> {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Container(
                  width: 800,
                  child: ProjectHeader(
                    picName: 'logos/logo-dancejam',
                    projectTitle: 'Dance Jam - Relaunch',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: 800,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDanceJam.mp4?alt=media&token=54b7eedf-da4b-4a5a-97eb-24ab0bcd1136',
                  ),
                ),
                Container(
                  width: 800,
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
                              ' and relaunched',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'in February, 2022.',
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
                  width: 800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerHeight: 340,
                      ),
                      ListContainer(
                          listTitle: 'Resposibilities', itemsList: dutiesList),
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
                            width: 240,
                            title: 'Results',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Container(
                            width: 240,
                            child: CarouselWithIndicator(
                              imgList: imgList,
                              height: 330,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 520,
                            title: 'Scan to Download',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Container(
                            width: 520,
                            child: CarouselWithIndicator(
                              imgList: qrList,
                              height: 330,
                              transition: Duration(seconds: 6),
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

  final List<Widget> imgList = [
    smallImage(240, 'carousel/dj/dj-1'),
    smallImage(240, 'carousel/dj/dj-2'),
    smallImage(240, 'carousel/dj/dj-3'),
    smallImage(240, 'carousel/dj/dj-4'),
    smallImage(240, 'carousel/dj/dj-5'),
  ];

  final List<Image> qrList = [
    Image(
      image: AssetImage('assets/images/QR/dollify-android.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/QR/dollify-iOS.png'),
      fit: BoxFit.cover,
    ),
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
