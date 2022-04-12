import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Shared/global.dart';

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
                  decoration: Global.cardBoxDecoration,
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
                                  : Global.disabledColor,
                            ),
                          ),
                        ),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/home/${widget.picName}.png'),
                        fit: BoxFit.cover,
                      )
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
                decoration: Global.cardBoxDecoration,
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
