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
                padding: const EdgeInsets.only(top: 40),
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
                          'Game Designer & Developer',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              PresentationCard(
                title: 'About',
                picName: 'home/lol',
                navigationPath: AboutRoute,
                isMobile: true,
              ),
              SizedBox(height: 15),
              PresentationCard(
                title: 'Portfolio',
                picName: 'home/keyboard',
                navigationPath: PortfolioRoute,
                isMobile: true,
              ),
              SizedBox(height: 15),
              PresentationCard(
                title: 'Contact',
                picName: 'home/coffee',
                navigationPath: ContactRoute,
                isMobile: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
