import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import 'horizontal_game_card.dart';

class HorizontalGameSummaryCard extends StatelessWidget {
  final String title;
  final String description;
  final String genre;
  final Widget platforms;
  final String engine;
  final String role;
  final String picName;
  final dynamic moreAction;
  final double height;
  final double width;

  const HorizontalGameSummaryCard({
    Key key,
    @required this.title,
    @required this.description,
    @required this.genre,
    @required this.platforms,
    @required this.engine,
    @required this.role,
    @required this.picName, 
    @required this.moreAction,
    this.height = 450,
    this.width = 800,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          TitleCard(
            width: width,
            title: title,
          ),
          HorizontalGameCard(
            description: description,
            height: height,
            width: width,
            genre: genre,
            platforms: platforms,
            engine: engine,
            moreAction: moreAction,
            role: role,
            picName: picName,
          ),
        ],
      ),
    );
  }
}