import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class IconCard extends StatefulWidget {
  const IconCard({
    Key key,
    this.title,
    this.icon,
    this.link = '',
    this.isMail = false, this.isMobile = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String link;
  final bool isMail;
  final bool isMobile;

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: () {
          widget.isMail ? _launchMailto() : _launchURL(widget.link);
        },
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

  void _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo cargar la dirección';
    }
  }

  void _launchMailto() async {
    final mailtoLink = Mailto(
      to: ['bj_hubs@hotmail.com'],
      subject: 'greatings',
      body: 'Hi Benoit!',
    );
    await launch('$mailtoLink');
  }
}
