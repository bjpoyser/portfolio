import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';

class PCEContentTablet extends StatefulWidget {
  @override
  _PCEContentTabletState createState() => _PCEContentTabletState();
}

class _PCEContentTabletState extends State<PCEContentTablet> {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = 730;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Container(
                  width: width,
                  child: ProjectHeader(
                    picName: 'logos/logo-pce',
                    projectTitle: 'Planet Cube: Edge',
                    titleContainerSize: 560,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FPlanet%20Cube_%20Edge%20%20-%20Steam%20Trailer.mp4?alt=media&token=8f4dd4f2-b733-4bd8-831a-1e12ed220ebd',
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
                              'Planet Cube: Edge is a game of ',
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
                              '.',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'It is a 2D run \'n gun platformer, where you have to overcome deadly challenges while a unknown force is invading your planet.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'This is the first IP of Sunna. My role consisted in implement enemies, hazzards, fix bugs, and other implementations like UI, Save System, etc.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'This game received very good comments in the GDC 2022, having an',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            Text(
                              'article in ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: '4gamer.net',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://www.4gamer.net/games/624/G062478/20220328106/');
                                }),
                            Text(
                              ' and beign part of the ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: 'NBC\'s coverage video ',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://www.youtube.com/watch?v=E1uzZd4zSTw');
                                }),
                            Text(
                              ' of the',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'GDC 2022.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Currently this game is under development, but you can ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: 'download a demo',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://store.steampowered.com/app/791200/Planet_Cube_Edge/');
                                }),
                          ],
                        ),
                        Text(
                          'and wishlist it in STEAM.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
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
                        containerHeight: 430,
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
                  decoration: Global.cardBoxDecoration,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
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
                                    'More information and Images will be added when the game gets released!',
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

  final List<Widget> qrList = [
    GestureDetector(
      onTap: () {
        Global.launchURL(
            'https://play.google.com/store/apps/details?id=com.davexp.dancematch');
      },
      child: Image(
        image: AssetImage('assets/images/QR/dollify-android.png'),
        fit: BoxFit.cover,
      ),
    ),
    GestureDetector(
      onTap: () {
        Global.launchURL(
            'https://apps.apple.com/us/app/dance-jam/id1532622112?msclkid=ea804ad3bac611eca9c30504e90bac02');
      },
      child: Image(
        image: AssetImage('assets/images/QR/dollify-iOS.png'),
        fit: BoxFit.cover,
      ),
    ),
  ];

  final List<String> devList = [
    'Genre: 2D Platformer',
    'Engine: Unity 3D C#',
    'Platform: PC',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'Develop Enemies',
    'Develop Hazzards',
    'Save/Load System',
    'Game Modes Dev',
    'Bug Fixing',
    'UI Design',
    'QA and UX',
  ];
}
