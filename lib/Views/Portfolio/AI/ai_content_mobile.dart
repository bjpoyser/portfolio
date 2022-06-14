import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Cards/title_card.dart';
import '../../../Widgets/Texts/simple_link.dart';

class AIContentMobile extends StatefulWidget {
  @override
  _AIContentMobileState createState() => _AIContentMobileState();
}

class _AIContentMobileState extends State<AIContentMobile> {
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
                        'AI Control System',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                TitleCard(
                  width: width,
                  title: 'System Showcase',
                  fontSize: Global.subtitleFontSize,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FAI-Showcase.mp4?alt=media&token=38447810-19a2-49ac-bb93-0b616e61b3c8',
                  ),
                ),
                TitleCard(
                  width: width,
                  title: 'Blueprint Explaination',
                  fontSize: Global.subtitleFontSize,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FAI-Blueprints-Explaination.mp4?alt=media&token=ac63f53b-cc94-41f6-a6b3-acb49410c753',
                  ),
                ),
                Container(
                  width: 800,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This is an university project. The course was about technical design, so we had to',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        Row(
                          children: [
                            Text(
                              'create a ',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                            SimpleLink(
                                text: 'TDD',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://drive.google.com/file/d/11wQbALPDyUhaVKQn__-tKkzEdWpGg6qf/view?usp=sharing');
                                }),
                            Text(
                              ' for a system of',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'our choise and then use that document to develop the system using Unreal Engine 5.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'I decided to create a system to control an AI using a command wheel. The system have 4 actions (Follow the player, Stay, Explore, and Come and Stay).',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'The system was developed using blueprints.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Apart from the AI Control System, I added a Debug system that allow us to track the AI behavior. Also I added a personalization system for the characters to change their colors.',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> devList = [
    'Engine: Unreal 5 Blueprints',
    'Platform: PC',
    'Type: System'
  ];

  final List<String> dutiesList = [
    'Technical Design Document',
    'Developer',
    'Debug',
  ];
}
