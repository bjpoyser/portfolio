import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Texts/simple_link.dart';

class PCEContentMobile extends StatefulWidget {
  @override
  _PCEContentMobileState createState() => _PCEContentMobileState();
}

class _PCEContentMobileState extends State<PCEContentMobile> {
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
                        'Planet Cube: Edge',
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
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FPlanet%20Cube_%20Edge%20%20-%20Steam%20Trailer.mp4?alt=media&token=8f4dd4f2-b733-4bd8-831a-1e12ed220ebd',
                  ),
                ),
                Container(
                  width: 800,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Planet Cube: Edge is a game',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            Text(
                              'of ',
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
                          'This game received very good comments in the GDC 2022, ',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            Text(
                              'having an article in ',
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
                          ],
                        ),
                        Text(
                          'and beign part of the ',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
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
                        Text(
                          'Currently this game is under development, but you can ',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            Text(
                              '',
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
                            Text(
                              ' and wishlist',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'it in STEAM.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
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
                    child: Text(
                      'More information and Images will be added when the game gets released!',
                      style: TextStyle(
                          fontSize: Global.linkFontSize,
                          color: Colors.grey[700]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 80),
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
    'Genre: 2D Platformer',
    'Engine: Unity 3D C#',
    'Platform: PC',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'Gameplay Programming',
    'Systems Development',
    'Bug Fixing',
    'UI Design',
    'QA and UX',
  ];
}
