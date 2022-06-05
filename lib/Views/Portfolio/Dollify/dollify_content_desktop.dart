import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';

class DollifyContentDesktop extends StatefulWidget {
  @override
  _DollifyContentDesktopState createState() => _DollifyContentDesktopState();
}

class _DollifyContentDesktopState extends State<DollifyContentDesktop> {
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
                    picName: 'logos/logo-dollify',
                    projectTitle: 'Dollify - Updates',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: 800,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDollify-Demo.mp4?alt=media&token=631c301a-aadb-4c07-b969-c24dca164860',
                  ),
                ),
                Container(
                  width: 800,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
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
                              ' in 2018.',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'With this app, you can create dolls using the unique art of ',
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
                  width: 800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerHeight: 385,
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
                    ImageWithHeaderCard(
                      cardWidth: 240,
                      imageWidth: 130,
                      picName: 'carousel/dollify/me-ella-dolls',
                      title: 'Duos Update',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ImageWithHeaderCard(
                        cardWidth: 240,
                        imageWidth: 130,
                        picName: 'carousel/dollify/chico-bestia',
                        title: 'Fantasy Update',
                      ),
                    ),
                    ImageWithHeaderCard(
                      cardWidth: 240,
                      imageWidth: 130,
                      picName: 'carousel/dollify/ombre-update',
                      title: 'Ombre Update',
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
    smallImage(240, 'carousel/dollify/me-doll'),
    smallImage(240, 'carousel/dollify/wal-zer-dolls'),
    smallImage(240, 'carousel/dollify/avatar'),
    smallImage(240, 'carousel/dollify/lucifer'),
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
    'Genre: Avatar Creator',
    'Engine: Unity 3D C#',
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
