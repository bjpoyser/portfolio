import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Cards/vertical_game_card.dart';

class VerticalGameSummaryCard extends StatelessWidget {
  final String title;
  final String description;
  final String genre;
  final Widget platforms;
  final String engine;
  final String role;
  final String picName;
  final dynamic moreAction;
  final double width;

  const VerticalGameSummaryCard({
    Key key,
    @required this.title,
    @required this.description,
    @required this.genre,
    @required this.platforms,
    @required this.engine,
    @required this.role,
    @required this.picName, 
    @required this.moreAction,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleCard(
          width: width,
          title: title,
          fontSize: 40,
        ),
        VerticalGameCard(
          description: description,
          width: width,
          genre: genre,
          platforms: platforms,
          engine: engine,
          moreAction: moreAction,
          role: role,
          picName: picName,
        ),
      ],
    );
  }
}