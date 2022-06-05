import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Texts/simple_link.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';
import '../../../Widgets/Images/carousel_with_indicator.dart';

class AIContentDesktop extends StatefulWidget {
  @override
  _AIContentDesktopState createState() => _AIContentDesktopState();
}

class _AIContentDesktopState extends State<AIContentDesktop> {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Container(
                  width: 800,
                  child: ProjectHeader(
                    picName: 'logos/logo-unreal',
                    projectTitle: 'AI Control System',
                  ),
                ),
                SizedBox(height: 40),
                TitleCard(
                    width: 800,
                    title: 'System Showcase',
                    fontSize: Global.title2FontSize),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: VideoContainer(
                    width: 800,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FAI-Showcase.mp4?alt=media&token=38447810-19a2-49ac-bb93-0b616e61b3c8',
                  ),
                ),
                TitleCard(
                    width: 800,
                    title: 'Blueprint Explaination',
                    fontSize: Global.title2FontSize),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: VideoContainer(
                    width: 800,
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
                                text: 'Technical Design Document',
                                fontSize: Global.subtitleFontSize,
                                action: () {
                                  Global.launchURL(
                                      'https://drive.google.com/file/d/11wQbALPDyUhaVKQn__-tKkzEdWpGg6qf/view?usp=sharing');
                                }),
                            Text(
                              ' for a system of our choise and then use that',
                              style:
                                  TextStyle(fontSize: Global.subtitleFontSize),
                            ),
                          ],
                        ),
                        Text(
                          'document to develop the system using Unreal Engine 5.',
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
                  width: 800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerHeight: 245,
                      ),
                      ListContainer(
                          listTitle: 'Resposibilities', itemsList: dutiesList),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  decoration: Global.cardBoxDecoration,
                  child: Column(
                    children: [
                      TitleCard(
                        width: 800,
                        title: 'Screenshots',
                        fontSize: Global.title2FontSize,
                      ),
                      Container(
                        width: 800,
                        child: CarouselWithIndicator(
                          imgList: imgList,
                          height: 400,
                        ),
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

  final List<Widget> imgList = [
    smallImage(800, 'carousel/ai/ai-1'),
    smallImage(800, 'carousel/ai/ai-2'),
    smallImage(800, 'carousel/ai/ai-3'),
    smallImage(800, 'carousel/ai/ai-4'),
    smallImage(800, 'carousel/ai/ai-5')
  ];

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
