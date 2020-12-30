import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';

class FontVerticalCard extends StatelessWidget {
  const FontVerticalCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: 150,
      decoration: Global.cardBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('SPACE ME OUT!', style: TextStyle(fontSize: 40, fontFamily: 'Space Me Out',), textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SimpleLink(
                  text: 'Test',
                  action: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.NO_HEADER,
                      width: size.width,
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
                                style: TextStyle(fontFamily: 'Space Me Out', fontSize: 30),
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
            ),
          )
        ],
      ),
    );
  }
}
