import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class FrienemiesContentMobile extends StatefulWidget {
  @override
  _FrienemiesContentMobileState createState() =>
      _FrienemiesContentMobileState();
}

class _FrienemiesContentMobileState extends State<FrienemiesContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 15;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleCard(width: size.width * 0.8, title: 'Frienemies: Fight Game', fontSize: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ProjectDescriptionCard(
                    isMobile: true,
                    width: size.width * 0.8,
                    title: 'Frienemies: Fight Game',
                    fontSize: 18,
                    desc:
                        'I have started this project right after finishing a course of videogame structures at the university, I wanted to develop a more complex game by my own. I like a lot fighting games like street fighter and mortal combat, so I decided to create a game based on them, usign my friends as fighters, so that\'s why the name of the game is Frienemies, a combination between the words Friends and Enemies.\n\nAre we friends or enemies? Lets figure it out fighting.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FFrienemies-Demo.mp4?alt=media&token=b5653b0c-2d7c-4aa4-a360-2a44bfd80fee',
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Role',
                        description: Text(
                          '* Developer',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Engine',
                        description: Text(
                          '* Unity 3D',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Team Size',
                        description: Text(
                          '* 1',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
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
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Year',
                        description: Text(
                          '* 2019 - Now',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Status',
                        description: Text(
                          '* On Hold',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            width: size.width * 0.7,
                            child: CarouselWithIndicator(
                              height: size.width * 0.7,
                              imgList: imgList,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
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
