import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Images/color_changeable_image.dart';

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
    return !widget.isMobile
        ? MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (e) => _mouseEnter(true),
            onExit: (e) => _mouseEnter(false),
            child: GestureDetector(
              onTap: () {
                locator<NavigationService>().navigateTo(widget.navigationPath);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 300,
                  height: 370,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 0),
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
                              color: isHover || widget.isMobile
                                  ? Colors.black
                                  : Global.titleColor,
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
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              locator<NavigationService>().navigateTo(widget.navigationPath);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 300,
                height: 370,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
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
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/${widget.picName}.png'),
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
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
