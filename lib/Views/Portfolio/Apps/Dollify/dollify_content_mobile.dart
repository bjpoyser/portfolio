import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class DollifyContentMobile extends StatefulWidget {
  @override
  _DollifyContentMobileState createState() => _DollifyContentMobileState();
}

class _DollifyContentMobileState extends State<DollifyContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 14;
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
                TitleCard( width: size.width * 0.8, title: 'Dollify: Duos Update', fontSize: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ProjectDescriptionCard(
                    isMobile: true,
                    width: size.width * 0.8,
                    title: 'Dollify - Duos Update',
                    fontSize: 18,
                    desc:
                        'Dollify is an app of @Dave.xp, developed by Sunna Entertainment in 2018.\n\nWith this app, you can create dolls using the unique art of @Dave.xp.\n\nDollify has more than 10.000.000 downloads just on Android devices and has a rating of 4.5 in both stores (Android and Apple). I was assigned to this project to develop the Duos Update, released in July 2021.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDollify-Demo.mp4?alt=media&token=631c301a-aadb-4c07-b969-c24dca164860',
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
                          '* Unity3D',
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
                          '* 2 weeks',
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
                              )
                            ],
                          ),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Year',
                        description: Text(
                          '* 2021',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Status',
                        description: Text(
                          '* Published',
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
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            QRContainer(
                              title: 'Tap for Android',
                              picName: 'dollify-android',
                              marketURL: 'https://play.google.com/store/apps/details?id=com.davexp.dollify',
                              fontSize: 16,
                            ),
                            SizedBox(height: 20),
                            QRContainer(
                              title: 'Tap for Apple',
                              picName: 'dollify-apple',
                              marketURL: 'https://apps.apple.com/app/id1444697551',
                              fontSize: 16,
                            )
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
    image: AssetImage('assets/images/carousel/dollify/me-doll.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/dollify/me-ella-dolls.png'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('assets/images/carousel/dollify/wal-zer-dolls.png'),
    fit: BoxFit.cover,
  ),
];
