import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Shared/global.dart';
import '../../../Widgets/Cards/icon_card.dart';
import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Widgets/Cards/list_container.dart';
import '../../../Widgets/Texts/simple_link.dart';

class SolveAndRescueContentMobile extends StatefulWidget {
  @override
  _SolveAndRescueContentMobileState createState() =>
      _SolveAndRescueContentMobileState();
}

class _SolveAndRescueContentMobileState
    extends State<SolveAndRescueContentMobile> {
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
                        'Solve & Rescue',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: width,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2Fsolve-and-rescue.mp4?alt=media&token=4136f24a-e9f7-4b18-8158-8b6778d3d1e3',
                  ),
                ),
                Container(
                  width: width,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Solve & Rescue is a math puzzle game developed by Jokey Studio with the support of Sunna Entertainment. Solve puzzle to rescue animals from the aliens, easy right?\nMy role in this game was programmer, integrating gameplay and UI features. Also, I was in-charge of connecting it to playfab, firebase, in-game purchases and ironsource to display ads.',
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
                SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/sr/sr-1',
                      title: 'In-Game',
                    ),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/sr/sr-2',
                      title: 'Lobby',
                    ),
                    SizedBox(height: 40),
                    ImageWithHeaderCard(
                      cardWidth: width,
                      imageWidth: width,
                      picName: 'carousel/sr/sr-3',
                      title: 'Home Screen',
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: IconCard(
                        icon: FontAwesomeIcons.android,
                        link:
                            'https://play.google.com/store/apps/details?id=com.jokeystudio.animalrescue',
                        title: 'Download in Android',
                        iconSize: 150,
                        isMobile: true,
                        containerSize: width,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: IconCard(
                        icon: FontAwesomeIcons.appStore,
                        link:
                            'https://apps.apple.com/app/solve-rescue-animal-kingdom/id1539185842',
                        title: 'Download in iOS',
                        iconSize: 150,
                        isMobile: true,
                        containerSize: width,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> devList = [
    'Genre: Platformer',
    'Engine: Unity 3D C#',
    'Platform: STEAM',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'Programming',
    'Art Integration',
    'UI Design',
    'Connection to WebServices',
    'Bug Fixing'
  ];
}
