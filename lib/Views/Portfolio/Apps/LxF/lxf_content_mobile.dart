import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/project_description_card.dart';
import 'package:portfolio/Widgets/Cards/project_feature_card.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class LxFContentMobile extends StatefulWidget {
  @override
  _LxFContentMobileState createState() => _LxFContentMobileState();
}

class _LxFContentMobileState extends State<LxFContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 15;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProjectDescriptionCard(
                  isMobile: true,
                  width: size.width * 0.8,
                  title: 'Locos X El Fútbol',
                  fontSize: 18,
                  desc: 'It is my graduation project from the university. In this project, we\'ve been going through every step of a project (Planning, Design, Development, Testing, and Release). My role during this project has been a project manager but also as a designer and programmer.\n\nLxF or Locos X el Fútbol is a 5-a-side soccer field located in Curridabat, San José, Costa Rica. With this project, people that want to reserve a date to use the soccer field just have to open the mobile app and select which date they want. Besides, anyone that has the mobile app will be able to create a team to play tournaments, have a list of friends, chat with its friends and with the managers of LxF, manage its profile and receive notifications like friend requests, team requests, and reminders of dates reserved.\n\nFurthermore, there is a web app for the managers of the soccer field, where they can manage dates, clients, analytics, tournaments, chats, broadcasts. If they have an Administrator Role, they could see, create, update, and delete other employees from the system.\n\nThis project uses firebase as a NoSQL database, image storage, functions to push notifications, authentication for mobile apps, and hosting for the web app.',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL: 'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FLxF-Demo.mp4?alt=media&token=6cf18375-4d61-4c67-b768-4d2561cae0a9',
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Role',
                        description: Text(
                          '* Project Manager, Programmer & Designer',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Framework',
                        description: Text(
                          '* Flutter & ASP.NET',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Team Size',
                        description: Text(
                          '* 4',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Duration',
                        description: Text(
                          '* 1 Year',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Platforms',
                        description: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              Text(
                                '* ',
                                style: TextStyle(fontSize: fontSize),
                              ),
                              Icon(
                                Icons.android_outlined,
                                size: fontSize + 5,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                FontAwesomeIcons.apple,
                                size: fontSize + 5,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                FontAwesomeIcons.internetExplorer,
                                size: fontSize + 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Year',
                        description: Text(
                          '* 2020',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      ProjectFeatureCard(
                        width: size.width * 0.8,
                        fontSize: fontSize,
                        title: 'Status',
                        description: Text(
                          '* Finished',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: size.width,
                            decoration:
                                BoxDecoration(border: Border.all(width: 5)),
                            child: Image(
                              image: AssetImage('assets/images/lxf.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
