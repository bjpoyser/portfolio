import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Revamp/text_button_widget.dart';

class LanguagesBar extends StatelessWidget {
  final bool isSpanish;
  final bool isEnglish;
  final bool isFrench;

  const LanguagesBar({
    Key key,
    this.isSpanish = false,
    this.isEnglish = false,
    this.isFrench = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 210,
          child: Row(
            children: [
              TextButtonWidget(
                label: 'ES',
                action: () {},
                padding: EdgeInsets.all(8),
                borderThickness: 2,
                isEnabled: !isSpanish,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButtonWidget(
                  label: 'EN',
                  action: () {},
                  padding: EdgeInsets.all(8),
                  borderThickness: 2,
                  isEnabled: !isEnglish,
                ),
              ),
              TextButtonWidget(
                label: 'FR',
                action: () {},
                padding: EdgeInsets.all(8),
                borderThickness: 2,
                isEnabled: !isFrench,
              )
            ],
          ),
        ),
      ),
    );
  }
}
