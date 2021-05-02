import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';
import 'package:portfolio/Widgets/Links/ClickableIcon.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';

class AboutContentDesktop extends StatefulWidget {
  @override
  _AboutContentDesktopState createState() => _AboutContentDesktopState();
}

class _AboutContentDesktopState extends State<AboutContentDesktop> {
  final ScrollController _scrollController = ScrollController();
  DateTime workStartDate = DateTime(2020, 11, 2);

  @override
  Widget build(BuildContext context) {
    double bigFontSize = 40;
    double nomalFontSize = 20;
    double smallFontSize = 16;
    double tinyFontSize = 14;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 600,
          picName: 'metroid',
          padding: const EdgeInsets.only(top: 200, right: 1200),
        ),
        Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 160, horizontal: 50),
            child: Center(
              child: Container(
                width: 800,
                height: 584,
                decoration: Global.cardBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50.0, right: 50.0, bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                Global.launchURL(
                                    'https://www.instagram.com/p/CJXM-LKMMuz/');
                              },
                              child: SizeableImage(
                                picName: 'about/me',
                                width: 250,
                              ).showCursorOnHover,
                            ),
                          ),
                          Text('Benoit Jamal Poyser Acuña',
                              style: TextStyle(fontSize: nomalFontSize)),
                          Text(
                            'Developer',
                            style: TextStyle(fontSize: nomalFontSize),
                          ),
                          SimpleLink(
                            text: 'at Sunna Entertainment',
                            action: () {
                              Global.launchURL(
                                  'https://www.sunnaentertainment.com/about-sunna');
                            },
                            fontSize: smallFontSize,
                          ).increaseSizeOnHover,
                          Text('Living in Costa Rica',
                              style: TextStyle(fontSize: nomalFontSize)),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClickableIcon(
                                icon: FontAwesomeIcons.instagram,
                                action: () {
                                  Global.launchURL(
                                      'https://www.instagram.com/bj_poyser/');
                                },
                              ),
                              SizedBox(width: 20),
                              ClickableIcon(
                                  icon: FontAwesomeIcons.linkedin,
                                  action: () {
                                    Global.launchURL(
                                        'https://www.linkedin.com/in/benoit-poyser-b26465181/');
                                  }),
                              SizedBox(
                                width: 20,
                              ),
                              ClickableIcon(
                                  icon: FontAwesomeIcons.envelope,
                                  action: () {
                                    Global.launchMailto();
                                  })
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About Me', style: TextStyle(fontSize: bigFontSize)),
                          SizedBox(height: 5),
                          Container(color: Colors.green, height: 2, width: 400,),
                          SizedBox(height: 10),
                          Text(
                            'Bilingual',
                            style: TextStyle(fontSize: nomalFontSize),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '- Spanish (native)',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- English (B1+)',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- French (A1, currently learning it)',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Knowledge',
                            style: TextStyle(fontSize: nomalFontSize),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '- Unity3D, Photoshop, Blender3D (basic)',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- HTML, CSS, BootStrap, JS, PHP, JQUERY',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- SQL, PL/SQL, NoSQL, Firebase',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- C#, JAVA, ASP.NET Framework, Dart',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- Android Studio, Xamarin, Flutter',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- R, PowerBI',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '- CCNA (Certified)',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Education',
                            style: TextStyle(fontSize: nomalFontSize),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '- B.Sc. in Computer Engineering',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '        Fidélitas University, Costa Rica, 2021',
                                  style: TextStyle(fontSize: tinyFontSize),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '- Middle Tech. in Network Computing',
                                  style: TextStyle(fontSize: smallFontSize),
                                ),
                                Text(
                                  '        CTP Calle Blancos, Costa Rica, 2017',
                                  style: TextStyle(fontSize: tinyFontSize),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
        ),
      ],
    );
  }
}
