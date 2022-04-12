import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/icon_card.dart';

class ContactContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconCard(
                  title: 'Instagram',
                  containerSize: 200,
                  iconSize: 100,
                  fontSize: 30,
                  icon: FontAwesomeIcons.instagram,
                  link: 'https://www.instagram.com/bjpoyser/',
                  isMobile: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconCard(
                  title: 'LinkedIn',
                  containerSize: 200,
                  iconSize: 100,
                  fontSize: 30,
                  icon: FontAwesomeIcons.linkedin,
                  link: 'https://www.linkedin.com/in/bjpoyser/',
                  isMobile: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconCard(
                  title: 'Email',
                  containerSize: 200,
                  iconSize: 100,
                  fontSize: 30,
                  icon: FontAwesomeIcons.envelope,
                  isMail: true,
                  isMobile: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
