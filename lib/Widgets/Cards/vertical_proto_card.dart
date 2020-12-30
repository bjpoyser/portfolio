import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';
import 'package:flutter/material.dart';

class VerticalProtoCard extends StatelessWidget {
  final String description;
  final double width;
  final String framework;
  final Widget platforms;
  final double fontSize;
  final String role;
  final dynamic moreAction;

  const VerticalProtoCard({
    Key key,
    @required this.description,
    @required this.width,
    @required this.framework,
    @required this.platforms,
    @required this.moreAction,
    @required this.role,
    this.fontSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: width,
        decoration: Global.cardBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: fontSize, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Framework: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: framework)
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        style:
                            TextStyle(fontSize: fontSize, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Platforms: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                  platforms
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/logos/logo-flutter.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    'As $role',
                    style: TextStyle(fontSize: fontSize),
                  )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SimpleLink(
                  action: moreAction,
                  text: 'More',
                  hoveredColor: Colors.green[900],
                  normalColor: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
