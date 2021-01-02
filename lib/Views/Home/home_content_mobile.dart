import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/presentation_card.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Benoit Poyser Acuña',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Game & Software Developer',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              PresentationCard(
                title: 'About Me',
                picName: 'lol',
                navigationPath: AboutRoute,
                isMobile: true,
              ),
              SizedBox(height: 50),
              PresentationCard(
                title: 'Portfolio',
                picName: 'keyboard',
                navigationPath: PortfolioRoute,
                isMobile: true,
              ),
              SizedBox(height: 50),
              PresentationCard(
                title: 'Contact Me',
                picName: 'coffee',
                navigationPath: ContactRoute,
                isMobile: true,
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
