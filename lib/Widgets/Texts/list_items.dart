import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';

class ListItem extends StatelessWidget {
  final String itemText;
  final String listSymbol;
  final double fontSize;

  const ListItem({Key key, this.itemText, this.fontSize, this.listSymbol = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listSymbol != ""
        ? RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: listSymbol + ' ',
                  style: TextStyle(
                    color: Global.accentColor,
                    fontSize: fontSize,
                  ),
                ),
                TextSpan(
                  text: itemText,
                  style: TextStyle(fontSize: fontSize, color: Colors.black),
                )
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.check,
                color: Global.secondAccentColor,
                size: fontSize,
              ),
              SizedBox(width: 10),
              Text(
                itemText,
                style: TextStyle(fontSize: fontSize, color: Colors.black),
              ),
            ],
          );
  }
}
