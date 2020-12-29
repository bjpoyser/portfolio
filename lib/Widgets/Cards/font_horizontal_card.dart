import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';

class FontHorizontalCard extends StatelessWidget {
  const FontHorizontalCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('SPACE ME OUT!',
              style: TextStyle(fontSize: 100, fontFamily: 'Space Me Out')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SimpleLink(
                text: 'Test',
                action: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.NO_HEADER,
                    width: 800,
                    headerAnimationLoop: false,
                    animType: AnimType.BOTTOMSLIDE,
                    body: Center(
                      child: Column(
                        children: [
                          Text(
                            'Write Someting',
                            style: TextStyle(fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 20),
                            child: TextField(
                              style: TextStyle(fontFamily: 'Space Me Out', fontSize: 50),
                            ),
                          ),
                        ],
                      ),
                    ),
                    btnOkIcon: FontAwesomeIcons.check,
                    btnOkColor: Colors.lightGreenAccent[700],
                    btnOkText: '',
                    btnOkOnPress: () {},
                  )..show();
                },
              ),
              /*SizedBox(
                width: 40,
              ),
              SimpleLink(
                text: 'Download',
                action: () {
                  AwesomeDialog(
                    context: context,
                    width: 280,
                    buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                    headerAnimationLoop: false,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'INFO',
                    desc: 'Dialog description here...',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
              ),*/
            ],
          )
        ],
      ),
    );
  }
}
