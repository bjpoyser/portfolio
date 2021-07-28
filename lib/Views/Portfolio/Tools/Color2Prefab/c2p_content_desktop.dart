import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class Color2PrefabContentDesktop extends StatefulWidget {
  @override
  _Color2PrefabContentDesktopState createState() =>
      _Color2PrefabContentDesktopState();
}

class _Color2PrefabContentDesktopState extends State<Color2PrefabContentDesktop> {
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
                  TitleCard(width: size.width * 0.8, title: 'Color 2 Prefab'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectDescriptionCard(
                            width: size.width * 0.38,
                            fontSize: fontSize,
                            title: 'Color 2 Prefab',
                            desc: 'If you need to translate a image to a level this is your tool!\n\nColor 2 Prefab helps you generate a level from an image, saving you time.\n\nI made this tool because in a project I was working on I needed to paint a Level first and then recreate it in Unity3D, but that was taking a long time. Since I use this tool, everything is easier and faster!\n\nThis tool is recommended for 2D Platformers but you can also use it to generate 3D levels of any other genre since you only have to assign a prefab to a color.'),
                        SizedBox(width: 30),
                        VideoContainer(
                          width: size.width * 0.4,
                          videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FColor2Prefab.mp4?alt=media&token=1a2c226b-7737-40bd-9f1d-0da6ebe77647',
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
                                '* UnityEditor',
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
                                '* 3 weeks',
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
                                      '* Unity3D',
                                      style: TextStyle(fontSize: fontSize),
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
                  SizedBox( height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      QRContainer(
                        title: 'Scan or Click to See It',
                        picName: 'c2p-web',
                        marketURL: 'https://assetstore.unity.com/packages/tools/level-design/color-2-prefab-193922',
                      )
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
    image: AssetImage('assets/images/carousel/c2p/c2p.png'),
    fit: BoxFit.cover,
  ),
];