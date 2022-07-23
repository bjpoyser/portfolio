import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Images/sizeable_image.dart';
import '../../../Widgets/Texts/simple_link.dart';

class PurpleFrogContentTablet extends StatefulWidget {
  @override
  _PurpleFrogContentTabletState createState() =>
      _PurpleFrogContentTabletState();
}

class _PurpleFrogContentTabletState extends State<PurpleFrogContentTablet> {
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
                    picName: 'logos/logo-pf',
                    projectTitle: 'Save The Purple Frog !',
                    titleContainerSize: 560,
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
                  width: width,
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
                        Row(
                          children: [
                            Text(
                              'This is the second game of ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerHeight: 530,
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
                Container(
                  width: width,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Level Design Process',
                          style: TextStyle(fontSize: Global.title2FontSize),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: '* ',
                                style: TextStyle(
                                  color: Global.accentColor,
                                  fontSize: Global.subtitleFontSize,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'This process was applied to all the 24 levels in the game',
                                style: TextStyle(
                                    fontSize: Global.subtitleFontSize),
                              ),
                              TextSpan(
                                text: ' *',
                                style: TextStyle(
                                  color: Global.accentColor,
                                  fontSize: Global.subtitleFontSize,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageWithHeaderCard(
                      cardWidth: 230,
                      imageWidth: 130,
                      picName: '/carousel/pf/pf-1',
                      title: '1. Concept',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ImageWithHeaderCard(
                        cardWidth: 230,
                        imageWidth: 130,
                        picName: '/carousel/pf/pf-color-map',
                        title: '2. Color Mapping',
                      ),
                    ),
                    ImageWithHeaderCard(
                      cardWidth: 230,
                      imageWidth: 130,
                      picName: '/carousel/pf/pf-integration',
                      title: '3. Integration',
                    ),
                  ],
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
                            title: 'Scan',
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
                                  picName: '/QR/QR_Frog',
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
    smallImage(240, 'carousel/pf/pf-1'),
    smallImage(240, 'carousel/pf/pf-2'),
    smallImage(240, 'carousel/pf/pf-3'),
    smallImage(240, 'carousel/pf/pf-4'),
    smallImage(240, 'carousel/pf/pf-5'),
  ];

  final List<String> devList = [
    'Genre: Arcade, Action',
    'Engine: Unity 3D C#',
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
