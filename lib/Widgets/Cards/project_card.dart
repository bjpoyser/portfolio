import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/project_logo.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String picName;
  final dynamic action;
  final String role;
  final double cardWidth;
  final double cardHeight;
  final double picSize;
  final bool isMobile;

  const ProjectCard(
      {Key key,
      @required this.title,
      @required this.picName,
      @required this.action,
      @required this.role,
      this.cardWidth = 300,
      this.cardHeight = 330,
      this.picSize = 250,
      this.isMobile = false})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return !widget.isMobile
        ? MouseRegion(
            onHover: (e) => _mouseEnter(true),
            onExit: (e) => _mouseEnter(false),
            child: GestureDetector(
              onTap: widget.action,
              child: Container(
                decoration: Global.cardBoxDecoration,
                child: Column(
                  children: [
                    TitleCard(
                      width: widget.cardWidth,
                      title: widget.title,
                      fontSize: Global.title2FontSize,
                    ),
                    ProjectLogo(
                        action: widget.action,
                        role: widget.role,
                        picName: widget.picName,
                        cardWidth: widget.cardWidth,
                        cardHeight: widget.cardHeight)
                  ],
                ),
              ),
            ).moveUpOnHover,
          ).showCursorOnHover
        : GestureDetector(
            onTap: widget.action,
            child: Container(
              decoration: Global.cardBoxDecoration,
              child: Column(
                children: [
                  TitleCard(
                    width: widget.cardWidth,
                    title: widget.title,
                    fontSize: Global.title2FontSize,
                  ),
                  ProjectLogo(
                      action: widget.action,
                      role: widget.role,
                      picName: widget.picName,
                      cardWidth: widget.cardWidth,
                      cardHeight: widget.cardHeight)
                ],
              ),
            ),
          );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
