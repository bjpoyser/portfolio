import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class FrienemiesContentDesktop extends StatefulWidget {
  @override
  _FrienemiesContentDesktopState createState() =>
      _FrienemiesContentDesktopState();
}

class _FrienemiesContentDesktopState extends State<FrienemiesContentDesktop> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 25;
    return Center(
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectDescriptionCard(
                    width: size.width * 0.8,
                    fontSize: fontSize,
                    title: 'Frienemies: Fight Game',
                    desc: 'Frienemies is a fight game, where all the characters are friends-o-mine, and of course, I am a character too.\n\nI have started this project right after finishing a course of videogame structures at the university, I wanted to develop a more complex game by my own. I like a lot fighting games like street fighter and mortal combat, so I decided to create a game based on them, usign my friends as fighters, so that\'s why the name of the game is Frienemies, a combination between the words Friends and Enemies.\n\nThis game has very simple controls (weak punch, strong punch, kick, jump and block), so are the graphics. I have used Adobe Animator to make all the drawings, included the Menus and Scenarios.\n\nFrienemies is still in progress because I have learned a lot of game design since I started developing it, and I want to make it better than is now, with more complex controls, animations and prettier graphics, but still you can play a demo of it right below this box.\n\nAre we friends or enemies? Lets figure it out fighting.',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: VideoContainer(
                      width: size.width * 0.8,
                      videoURL:
                          'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FFrienemies-Demo.mp4?alt=media&token=b5653b0c-2d7c-4aa4-a360-2a44bfd80fee',
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Role',
                              description: Text(
                                '* Developer',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Engine',
                              description: Text(
                                '* Unity 3D',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Team Size',
                              description: Text(
                                '* 1',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Year',
                              description: Text(
                                '* 2019 - Now',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Platforms',
                              description: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      '* ',
                                      style: TextStyle(fontSize: fontSize),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.internetExplorer,
                                      size: fontSize + 5,
                                    ),
                                    Text(
                                      ' (Demo)',
                                      style: TextStyle(fontSize: fontSize),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Icon(
                                        FontAwesomeIcons.laptop,
                                        size: fontSize + 5,
                                      ),
                                    ),
                                    Text(
                                      ' (Final Version)',
                                      style: TextStyle(fontSize: fontSize),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Status',
                              description: Text(
                                '* On Hold',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width * 0.29,
                          child: CarouselWithIndicator(
                            height: size.width * 0.35,
                            imgList: imgList,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: Global.cardBoxDecoration,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: SimpleLink(
                            text: 'Click Here To Play Frienemies',
                            fontSize: 50.0,
                            action: () {
                              Global.launchURL(
                                  'https://www.bjpoyser.me/frienemies/play.html');
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: Global.cardBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Player One', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                Text('Movement: W/D', style: TextStyle(fontSize: 25),),
                                Text('Jump: A', style: TextStyle(fontSize: 25),),
                                Text('Block: S', style: TextStyle(fontSize: 25),),
                                Text('Weak Punch: J', style: TextStyle(fontSize: 25),),
                                Text('Kick: K', style: TextStyle(fontSize: 25),),
                                Text('Strong Punch: L', style: TextStyle(fontSize: 25),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Player Two', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                Text('Movement: Left/Right', style: TextStyle(fontSize: 25),),
                                Text('Jump: Up', style: TextStyle(fontSize: 25),),
                                Text('Block: Down', style: TextStyle(fontSize: 25),),
                                Text('Weak Punch: NumPad 1', style: TextStyle(fontSize: 25),),
                                Text('Kick: NumPad 2', style: TextStyle(fontSize: 25),),
                                Text('Strong Punch: NumPad 3', style: TextStyle(fontSize: 25),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  final List<Image> imgList = [
    Image(
      image: AssetImage('assets/images/carousel/frienemies/bj.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/jessica.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/loarr.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/vlaxtor.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/talax.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/wally.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/kyrant.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/jeremy.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/charlie.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/frienemies/blank.png'),
      fit: BoxFit.cover,
    ),
  ];
}
