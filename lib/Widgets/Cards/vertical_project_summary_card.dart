import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Cards/vertical_proto_card.dart';

class VerticalProjectSummaryCard extends StatelessWidget {
  final String title;
  final String description;
  final String framework;
  final Widget platforms;
  final String status;
  final String role;
  final String picName;
  final dynamic moreAction;
  final double width;

  const VerticalProjectSummaryCard({
    Key key,
    @required this.title,
    @required this.description,
    @required this.framework,
    @required this.platforms,
    @required this.status,
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
        VerticalProtoCard(
          description: description,
          width: width,
          framework: framework,
          platforms: platforms,
          status: status,
          moreAction: moreAction,
          role: role,
          picName: picName,
        ),
      ],
    );
  }
}