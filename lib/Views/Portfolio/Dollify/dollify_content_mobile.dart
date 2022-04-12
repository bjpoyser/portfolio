import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/icon_card.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Cards/title_card.dart';
import '../../../Widgets/Texts/simple_link.dart';

class DollifyContentMobile extends StatefulWidget {
  @override
  _DollifyContentMobileState createState() => _DollifyContentMobileState();
}

class _DollifyContentMobileState extends State<DollifyContentMobile> {
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
                        'Dollify: Updates',
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
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDollify-Demo.mp4?alt=media&token=631c301a-aadb-4c07-b969-c24dca164860',
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
                              'Dollify is an app of ',
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
                              ', ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'developed by ',
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
                          ],
                        ),
                        Text(
                          'in 2018.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'With this app, you can create dolls using the unique art of ',
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
                              '.',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Dollify has more than 10.000.000 downloads just on Android devices and has a rating of 4.5 in both stores (Android and Apple). I was assigned to this project to develop the Duos Update, released in July 2021, The Fantasy Pack, released in September 2021, and Ombre Update Released in February 2022.',
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
                      picName: 'carousel/dollify/me-ella-dolls',
                      title: 'Duos Update',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: ImageWithHeaderCard(
                        cardWidth: width,
                        imageWidth: width,
                        picName: 'carousel/dollify/chico-bestia',
                        title: 'Fantasy Update',
                      ),
                    ),
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/dollify/me-doll',
                      title: 'Ombre Update',
                    ),
                  ],
                ),
                SizedBox(height: 40),
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
                          height: width * 1.3,
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
                      icon: FontAwesomeIcons.android,
                      link:
                          'https://play.google.com/store/apps/details?id=com.ontheedge.savethepurplefrog',
                      title: 'Download in Android',
                      iconSize: 150,
                      isMobile: true,
                      containerSize: width,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Container(
                    decoration: Global.cardBoxDecoration,
                    child: IconCard(
                      icon: FontAwesomeIcons.appStore,
                      link:
                          'https://apps.apple.com/us/app/save-the-purple-frog/id1569647982',
                      title: 'Download in iOS',
                      iconSize: 150,
                      isMobile: true,
                      containerSize: width,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Widget> imgList = [
    smallImage(240, 'carousel/dollify/me-doll'),
    smallImage(240, 'carousel/dollify/wal-zer-dolls'),
    smallImage(240, 'carousel/dollify/avatar'),
    smallImage(240, 'carousel/dollify/lucifer'),
  ];

  final List<String> devList = [
    'Genre: Avatar Creator',
    'Engine: Unity 3D',
    'Platform: Android & IOS',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'UI Design',
    'Bug Fixing',
    'Optimization',
    'Assets Integration',
    'QA',
    'Functionality Integration'
  ];
}
