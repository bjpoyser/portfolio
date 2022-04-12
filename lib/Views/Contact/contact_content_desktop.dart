import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Cards/icon_card.dart';

class ContactContentDesktop extends StatefulWidget {
  @override
  _ContactContentDesktopState createState() => _ContactContentDesktopState();
}

class _ContactContentDesktopState extends State<ContactContentDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconCard(
            title: 'Instagram',
            icon: FontAwesomeIcons.instagram,
            link: 'https://www.instagram.com/bjpoyser/'),
        IconCard(
          title: 'LinkedIn',
          icon: FontAwesomeIcons.linkedin,
          link: 'https://www.linkedin.com/in/bjpoyser/',
        ),
        IconCard(
          title: 'Email',
          icon: FontAwesomeIcons.envelope,
          isMail: true,
        )
      ],
    );
  }
}
