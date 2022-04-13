import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/icon_card.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Cards/title_card.dart';
import '../../../Widgets/Images/carousel_with_indicator.dart';
import '../../../Widgets/Texts/simple_link.dart';

class PurpleFrogContentMobile extends StatefulWidget {
  @override
  _PurpleFrogContentMobileState createState() =>
      _PurpleFrogContentMobileState();
}

class _PurpleFrogContentMobileState extends State<PurpleFrogContentMobile> {
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
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
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
                        'Save The Purple Frog!',
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
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FSave%20The%20Purple%20Frog%20(Trailer).mp4?alt=media&token=1c9e8e74-8b91-49f1-bab3-e7b7f77cca3a',
                  ),
                ),
                Container(
                  width: 380,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Save The Purple Frog is a non-profit game that is meant to raise awareness of the "prehistoric" purple frog and EDGE (Evolutionary Distinct and Globally Endangered) species.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'This is the second game of ',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            SimpleLink(
                                text: 'On The Edge',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL('https://www.ontheedge.org');
                                }),
                            Text(
                              ' productions.',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'It is based on the arcade classic "Frogger" and the popular "Crossy Road", adding unique features like the ability to burrow underground.\n\nThe player\'s final goal is to get the purple frog to the breeding grounds going through different environments (farm land, mountain village, and forest), avoiding human threats (traffic) and predators (checkered keelback snakes and brown fish owls).',
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
                Container(
                  width: width,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Level Design Process',
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'This process was applied to all the 24 levels in the game',
                            style: TextStyle(
                                fontSize: Global.linkFontSize,
                                color: Colors.grey[700]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
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
                        picName: '/carousel/pf/pf-1',
                        title: '1. Concept'),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                        cardWidth: width,
                        imageWidth: width,
                        picName: '/carousel/pf/pf-color-map',
                        title: '2. Color Mapping'),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                        cardWidth: width,
                        imageWidth: width,
                        picName: '/carousel/pf/pf-integration',
                        title: '3. Integration'),
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
                          height: 500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
    smallImage(300, 'carousel/pf/pf-1'),
    smallImage(300, 'carousel/pf/pf-2'),
    smallImage(300, 'carousel/pf/pf-3'),
    smallImage(300, 'carousel/pf/pf-4'),
    smallImage(300, 'carousel/pf/pf-5'),
  ];

  final List<String> devList = [
    'Genre: Arcade, Action',
    'Engine: Unity 3D',
    'Platform: Android & IOS',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'Concept',
    'Level Design',
    'UI Design',
    'Bug Fixing',
    'Optimization',
    'Assets Integration',
    'QA',
    'Difficulty Progression',
    'Tools Development'
  ];
}
