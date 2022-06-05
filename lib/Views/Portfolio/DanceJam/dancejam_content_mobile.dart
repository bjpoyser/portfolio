import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/icon_card.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Texts/simple_link.dart';

class DanceJamContentMobile extends StatefulWidget {
  @override
  _DanceJamContentMobileState createState() => _DanceJamContentMobileState();
}

class _DanceJamContentMobileState extends State<DanceJamContentMobile> {
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
                        'Dance Jam - Re-Launch',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
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
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dance Jam is a game of ',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
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
                          ],
                        ),
                        Row(
                          children: [
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
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        titleSize: 25,
                        listSize: Global.textFontSize,
                      ),
                      SizedBox(height: 40),
                      ListContainer(
                        listTitle: 'Resposibilities',
                        itemsList: dutiesList,
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
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/dj/dj-1',
                      title: 'Main Menu',
                    ),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/dj/dj-2',
                      title: 'Casual Game Mode',
                    ),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/dj/dj-5',
                      title: 'Pair Matched',
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: IconCard(
                        icon: FontAwesomeIcons.android,
                        link:
                            'https://play.google.com/store/apps/details?id=com.davexp.dancematch',
                        title: 'Download in Android',
                        iconSize: 150,
                        isMobile: true,
                        containerSize: width,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: IconCard(
                        icon: FontAwesomeIcons.appStore,
                        link:
                            'https://apps.apple.com/us/app/dance-jam/id1532622112?msclkid=ea804ad3bac611eca9c30504e90bac02',
                        title: 'Download in iOS',
                        iconSize: 150,
                        isMobile: true,
                        containerSize: width,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
