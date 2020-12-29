import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class HorizontalCard extends StatelessWidget {
  final String picName;
  final String picURL;
  final String title;
  final String subtitle;
  final String secondSubtitle;
  final String thirdSubtitle;
  final String fourthSubtitle;
  final String fifthSubtitle;
  final bool isLeft;

  const HorizontalCard(
      {Key key,
      @required this.picName,
      this.title = '',
      this.subtitle = '',
      this.secondSubtitle = '',
      this.thirdSubtitle = '',
      this.fourthSubtitle = '',
      this.fifthSubtitle = '',
      this.isLeft = true,
      this.picURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  _launchURL(picURL);
                },
                child: SizeableImage(
                  width: 350,
                  height: 200,
                  picName: picName,
                ).showCursorOnHover,
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title != ''
                        ? Text(title,
                            style: TextStyle(
                                fontSize: 30, color: Global.titleColor))
                        : Container(),
                    subtitle != ''
                        ? Text(subtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    secondSubtitle != ''
                        ? Text(secondSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    thirdSubtitle != ''
                        ? Text(thirdSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    fourthSubtitle != ''
                        ? Text(fourthSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    fifthSubtitle != ''
                        ? Text(fifthSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container()
                  ],
                ),
              )
            ],
          ).moveRightOnHover
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    title != ''
                        ? Text(title,
                            style: TextStyle(
                                fontSize: 30, color: Global.titleColor))
                        : Container(),
                    subtitle != ''
                        ? Text(subtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    secondSubtitle != ''
                        ? Text(secondSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    thirdSubtitle != ''
                        ? Text(thirdSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    fourthSubtitle != ''
                        ? Text(fourthSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container(),
                    fifthSubtitle != ''
                        ? Text(fifthSubtitle,
                            style: TextStyle(
                                fontSize: 20, color: Global.titleColor))
                        : Container()
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(picURL);
                },
                child: SizeableImage(
                  width: 350,
                  height: 200,
                  picName: picName,
                ).showCursorOnHover,
              ),
            ],
          ).moveLeftOnHover;
  }

  void _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo cargar la dirección';
    }
  }
}
