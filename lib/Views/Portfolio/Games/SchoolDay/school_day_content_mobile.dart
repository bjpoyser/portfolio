import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class SchoolDayContentMobile extends StatefulWidget {
  @override
  _SchoolDayContentMobileState createState() => _SchoolDayContentMobileState();
}

class _SchoolDayContentMobileState extends State<SchoolDayContentMobile> {
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
                TitleCard(width: size.width * 0.8, title: 'School Day', fontSize: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: ProjectDescriptionCard(
                    isMobile: true,
                    width: size.width * 0.8,
                    title: 'School Day',
                    fontSize: 18,
                    desc:
                        'School Day was a demo for a project for a non-profit foundation that wanted to create a website with educational video games for kids.\n\nI was the game designer and developer of this demo game, and a friend was in charge of art and sound effects. We had to develop it in 12 hours as part of the selection process.\n\nThis game is a simple memory game with 8 cards (4 pairs) with school items like pencils and backpacks.\n\nWith this project, I have learned how to work with another person in my team. That gave me more freedom and time to work in the code.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FSchoolDay-Trailer.mp4?alt=media&token=9d38184b-33f5-4384-b72a-cc41e3531ff5',
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
                          '* Game Designer & Programmer',
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
                          '* 2',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Duration',
                        description: Text(
                          '* 12 Hours',
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
                            ],
                          ),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Year',
                        description: Text(
                          '* 2020',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Status',
                        description: Text(
                          '* Released',
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    width: size.width * 0.8,
                    decoration: Global.cardBoxDecoration,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: SimpleLink(
                          text: 'Tap Here To Play',
                          fontSize: 30.0,
                          action: () {
                            Global.launchURL(
                                'https://www.bjpoyser.me/school-day/play.html');
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 40),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: Global.cardBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Make Pairs of cards by touching them to reveal their item', style: TextStyle(fontSize: 20),),
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
    );
  }

  final List<Image> imgList = [
    Image(
      image: AssetImage('assets/images/carousel/school-day/backpack.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/utils.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/crayons.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/ball.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/apple.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/earth-globe.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/rulers.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/images/carousel/school-day/backside.png'),
      fit: BoxFit.cover,
    ),
  ];
}
