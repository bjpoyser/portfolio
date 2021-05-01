import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
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
    double fontSize = 25;
    return Center(
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectDescriptionCard(
                    width: size.width * 0.8,
                    fontSize: fontSize,
                    title: 'Color 2 Prefab',
                    desc: 'If you need to translate a image to a level this is your tool!\n\nColor 2 Prefab helps you generate a level from an image, saving you time.\n\nI made this tool because in a project I was working on I needed to paint a Level first and then recreate it in Unity3D, but that was taking a long time. Since I use this tool, everything is easier and faster!\n\nThis tool is recommended for 2D Platformers but you can also use it to generate 3D levels of any other genre since you only have to assign a prefab to a color.',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 40),
                    child: VideoContainer(
                      width: size.width * 0.8,
                      videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FColor2Prefab.mp4?alt=media&token=1a2c226b-7737-40bd-9f1d-0da6ebe77647',
                    ),
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
                              fontSize: fontSize,
                              title: 'Role',
                              description: Text(
                                '* Developer',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Framework',
                              description: Text(
                                '* UnityEditor',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Team Size',
                              description: Text(
                                '* 1',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Duration',
                              description: Text(
                                '* 1 Month',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Platform',
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
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Year',
                              description: Text(
                                '* 2021',
                                style: TextStyle(fontSize: fontSize),
                              ),
                            ),
                            ProjectFeatureCard(
                              width: size.width * 0.5,
                              fontSize: fontSize,
                              title: 'Status',
                              description: Text(
                                '* Published',
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
                              image: AssetImage('assets/images/carousel/c2p/c2p.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      QRContainer(
                        title: 'Scan or Click to See It',
                        picName: 'Color-2-Prefab',
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
