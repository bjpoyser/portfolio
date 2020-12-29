import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Images/color_changeable_image.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class PresentationCard extends StatefulWidget {
  final String title;
  final String picName;
  final String navigationPath;
  final bool isMobile;

  const PresentationCard({
    Key key,
    this.title,
    this.picName,
    this.navigationPath,
    this.isMobile = false,
  }) : super(key: key);

  @override
  _PresentationCardState createState() => _PresentationCardState();
}

class _PresentationCardState extends State<PresentationCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(widget.navigationPath);
        },
        child: widget.isMobile ? Container(
          width: 300,
          height: 370,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 70,
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ColorChangeableImage(
                isHover: isHover,
                picName: widget.picName,
                isMobile: widget.isMobile,
              ),
            ],
          ),
        )
        : Container(
          width: 300,
          height: 370,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 70,
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 40,
                      color: isHover ? Colors.black : Global.titleColor,
                    ),
                  ),
                ),
              ),
              ColorChangeableImage(
                isHover: isHover,
                picName: widget.picName,
                isMobile: widget.isMobile,
              ),
            ],
          ),
        ).moveUpOnHover
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
