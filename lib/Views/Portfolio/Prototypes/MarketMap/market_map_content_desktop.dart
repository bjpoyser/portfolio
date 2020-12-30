import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class MarketMapContentDesktop extends StatefulWidget {
  @override
  _MarketMapContentDesktopState createState() =>
      _MarketMapContentDesktopState();
}

class _MarketMapContentDesktopState extends State<MarketMapContentDesktop> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = size.width * 0.015;
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProjectDescriptionCard(
                width: size.width * 0.8,
                title: 'Market Map',
                desc:
                    'This project tries to reduce COVID-19 spread in crowded places like markets. With the help of this app, people could see all market\'s stores on a map. Also, the app offers a section where you can make an auto checking of COVID-19 based on a point system, so, according to your answers, you will receive 1 of 4 results. It is just a prototype, there are many more functions that could be present in a final version.',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 40),
                child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FMarket-Demo.mp4?alt=media&token=0963ecfa-aadf-4a2e-966b-55d803a2819f',),
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
                          title: 'Role',
                          description: Text(
                            '* Developer',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
                          title: 'Framework',
                          description: Text(
                            '* Flutter',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
                          title: 'Team Size',
                          description: Text(
                            '* 1',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
                          title: 'Duration',
                          description: Text(
                            '* 8 Hours',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
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
                              ],
                            ),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
                          title: 'Year',
                          description: Text(
                            '* 2020',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                        ProjectFeatureCard(
                          width: size.width * 0.5,
                          title: 'Status',
                          description: Text(
                            '* Finished',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Container(
                        height: size.width * 0.5,
                        decoration: BoxDecoration(border: Border.all(width: 5)),
                        child: Image(
                          image: AssetImage('assets/images/market.png'),
                          fit: BoxFit.cover,
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
    );
  }
}
