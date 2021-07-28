import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class MassContentDesktop extends StatefulWidget {
  @override
  _MassContentDesktopState createState() => _MassContentDesktopState();
}

class _MassContentDesktopState extends State<MassContentDesktop> {
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
              child: 
              Column(
                children: [
                  TitleCard(width: size.width * 0.8, title: 'Misas: Parroquia de Lourdes'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectDescriptionCard(
                            width: size.width * 0.38,
                            fontSize: fontSize,
                            title: 'Misas: Parroquia de Lourdes',
                            desc: 'It is a non-profit project for Nuestra Señora de Lourdes parish of the Catholic Church.\n\nWith the mobile app, people can reserve spaces by choosing a subsidiary, and a scheduled mass. Also, the app offers a section where you can take an autochecking of COVID-19 survey based on a point system, so, according to your answers, you will receive 1 out of 4 results.\n\nBesides, there is a web app where people in charge of the management of the parish, can schedule masses and register people to them.'),
                        SizedBox(width: 30),
                        VideoContainer(
                          width: size.width * 0.4,
                          videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FMisas-Demo.mp4?alt=media&token=ebb7631a-bc57-4849-931e-64b152ef566c',
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
                              title: 'Framework',
                              description: Text(
                                '* Flutter & Web',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Team Size',
                              description: Text(
                                '* 1',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Duration',
                              description: Text(
                                '* 2 Weeks',
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
                                    ),
                                    SizedBox(
                                      width: 8,
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
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Year',
                              description: Text(
                                '* 2020',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: cardsSize,
                              fontSize: fontSize,
                              title: 'Status',
                              description: Text(
                                '* Released',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox( height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      QRContainer(
                        title: 'Scan or Click for Android',
                        picName: 'mass-android',
                        marketURL: 'https://play.google.com/store/apps/details?id=com.bjpoyser.MisasLourdes',
                      ),
                    ],
                  ),
                ],
              ),
              
              ),
            ),
          ),
        ),
      );
  }
}

final List<Image> imgList = [
  Image(
    image: AssetImage('assets/images/carousel/mass/mass.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/lourdes.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/vargas.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/cedros.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/granadilla.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/people.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/mass/mass-list.png'),
    fit: BoxFit.cover,
  ),
];
