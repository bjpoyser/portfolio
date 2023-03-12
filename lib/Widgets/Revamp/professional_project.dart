import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Revamp/platforms_widget.dart';
import 'package:portfolio/Widgets/Revamp/text_button_widget.dart';

class ProfessionalProject extends StatefulWidget {
  final String projectName;
  final String studioName;
  final String role;
  final String image;
  final PlatformsWidget platforms;
  final String tasks;
  final String trailerURL;

  const ProfessionalProject({
    Key key,
    @required this.projectName,
    @required this.studioName,
    @required this.role,
    @required this.image,
    @required this.platforms,
    @required this.tasks,
    @required this.trailerURL,
  }) : super(key: key);

  @override
  State<ProfessionalProject> createState() => _ProfessionalProjectState();
}

class _ProfessionalProjectState extends State<ProfessionalProject> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Container(
        width: 1100,
        height: 300,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isHovering
                ? Container(
                    width: 550,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      ),
                      border: Global.DefaultBorder,
                      color: Global.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.projectName,
                                style: Global.AltSubtitleStyle,
                              ),
                              Text(
                                widget.role,
                                style: Global.AltSubtitleStyle2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          child: Container(
                            width: 550,
                            child: Text(
                              widget.tasks,
                              style: Global.AltNormalStyle,
                            ),
                          ),
                        ),
                        TextButtonWidget(label: 'More')
                      ],
                    ),
                  )
                : Container(
                    width: 550,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      ),
                      border: Global.DefaultBorder,
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.projectName, style: Global.SubtitleStyle),
                        Text(widget.studioName, style: Global.SubtitleStyle2),
                        SizedBox(height: 15),
                        Text(
                          widget.role,
                          style: Global.SubtitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        widget.platforms
                      ],
                    ),
                  ),
            Container(
              width: 550,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                border: Global.DefaultBorder,
                color: Colors.black,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/snapshots/${widget.image}_snapshot.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: Colors.black.withOpacity(0.1),
                        alignment: Alignment.center,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => Global.launchURL(
                              widget.trailerURL,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35),
                                ),
                                border: Border.all(
                                  width: 2,
                                  color: Global.primaryColor,
                                ),
                                color: Color.fromARGB(69, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 5,
                                  bottom: 8,
                                  left: 8,
                                ),
                                child: Icon(
                                  FontAwesomeIcons.play,
                                  color: Global.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }
}
