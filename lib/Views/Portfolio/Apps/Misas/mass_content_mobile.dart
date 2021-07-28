import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class MassContentMobile extends StatefulWidget {
  @override
  _MassContentMobileState createState() => _MassContentMobileState();
}

class _MassContentMobileState extends State<MassContentMobile> {
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
                TitleCard(width: size.width * 0.8, title: 'Misas: Parroquia de Lourdes', fontSize: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ProjectDescriptionCard(
                    isMobile: true,
                    width: size.width * 0.8,
                    title: 'Misas Parroquia de Lourdes',
                    fontSize: 18,
                    desc:
                        'It is a non-profit project for Nuestra Señora de Lourdes parish of the Catholic Church.\n\nI\'ve been developing a system to control the number of assistants per mass in all of the subsidiaries of this parish. With the mobile app, people can reserve spaces by choosing a subsidiary, and a scheduled mass. Also, the app offers a section where you can take an autochecking of COVID-19 survey based on a point system, so, according to your answers, you will receive 1 out of 4 results.\n\nBesides, there is a web app where people in charge of the management of the parish, can schedule masses and register people to them.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FMisas-Demo.mp4?alt=media&token=ebb7631a-bc57-4849-931e-64b152ef566c',
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
                        title: 'Framework',
                        description: Text(
                          '* Flutter & Web',
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
                        title: 'Duration',
                        description: Text(
                          '* 2 Weeks',
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
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: size.width,
                            child: CarouselWithIndicator(
                              height: size.width,
                              imgList: imgList,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            QRContainer(
                              title: 'Tap for Android',
                              picName: 'mass-android',
                              marketURL: 'https://play.google.com/store/apps/details?id=com.bjpoyser.MisasLourdes',
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
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