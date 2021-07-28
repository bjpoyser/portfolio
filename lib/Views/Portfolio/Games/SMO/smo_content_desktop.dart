import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class SMOContentDesktop extends StatefulWidget {
  @override
  _SMOContentDesktopState createState() =>
      _SMOContentDesktopState();
}

class _SMOContentDesktopState extends State<SMOContentDesktop> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 20;
    double cardsSize = size.width * 0.45;
    return Center(
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                children: [
                  TitleCard(width: size.width * 0.8, title: 'Space Me Out!'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectDescriptionCard(
                            width: size.width * 0.38,
                            fontSize: fontSize,
                            title: 'Space Me Out!',
                            desc: 'SMO is an arcade game where you have to avoid obstacles and collect stars to buy new rockets. Its primary goal was to learn how to develop a videogame from scratch.\n\nBefore starting this project, I took an online course in game development, and right after finish it,  I\'ve made this game, a reason to start my path in the world of game design as my life goal.'),
                        SizedBox(width: 30),
                        VideoContainer(
                          width: size.width * 0.4,
                          videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FSMO-Trailer.mp4?alt=media&token=384d8485-8b65-49d2-8a5a-cf50dedb6607',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Container(
                            width: size.width * 0.29,
                            child: CarouselWithIndicator(
                              height: size.width * 0.35,
                              imgList: imgList,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Role',
                              description: Text(
                                '* Developer',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Engine',
                              description: Text(
                                '* Unity3D',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Team Size',
                              description: Text(
                                '* 2',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Duration',
                              description: Text(
                                '* 2 weeks',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
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
                                      Icons.android_outlined,
                                      size: fontSize + 5,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.apple,
                                      size: fontSize + 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Year',
                              description: Text(
                                '* 2021',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Status',
                              description: Text(
                                '* Published',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                          ],
                        ),
                      ],
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
    Image(image: AssetImage('assets/images/carousel/smo/alpha.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/blue.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/lerocket.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/void.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/rocket-xpress.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/pentopus.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/meteor.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/rocket-pocket.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/gladiator.png'),fit: BoxFit.fitWidth,),
    Image(image: AssetImage('assets/images/carousel/smo/space-meowt.png'),fit: BoxFit.fitWidth,),
  ];
}
