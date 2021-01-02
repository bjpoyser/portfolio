import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import 'horizontal_proto_card.dart';

class HorizontalProjectSummaryCard extends StatelessWidget {
  final String title;
  final String description;
  final String framework;
  final Widget platforms;
  final String status;
  final String role;
  final String picName;
  final dynamic moreAction;
  final double height;
  final double width;

  const HorizontalProjectSummaryCard({
    Key key,
    @required this.title,
    @required this.description,
    @required this.framework,
    @required this.platforms,
    @required this.status,
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
          HorizontalProtoCard(
            description: description,
            height: height,
            width: width,
            framework: framework,
            platforms: platforms,
            status: status,
            moreAction: moreAction,
            role: role,
            picName: picName,
          ),
        ],
      ),
    );
  }
}