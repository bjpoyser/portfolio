import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class IconRouteCard extends StatefulWidget {
  const IconRouteCard({
    Key key,
    this.title,
    this.icon,
    this.navigationPath,
    this.isMobile = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String navigationPath;
  final bool isMobile;

  @override
  _IconRouteCardState createState() => _IconRouteCardState();
}

class _IconRouteCardState extends State<IconRouteCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: () {locator<NavigationService>().navigateTo(widget.navigationPath);},
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 200,
                color: isHover || widget.isMobile ? Colors.black : Global.titleColor,
              ),
              SizedBox(height: 20,),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 50,
                    color: isHover || widget.isMobile ? Colors.black : Global.titleColor),
              )
            ],
          ),
        ),
      ).moveUpOnHover,
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
