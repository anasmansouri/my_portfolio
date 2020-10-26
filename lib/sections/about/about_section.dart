import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/components/my_outline_button.dart';
import 'package:my_portfolio/constants.dart';
import 'package:toast/toast.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

class AboutSection extends StatelessWidget {
  ScrollController controller;
  var globalKey;
  AboutSection({@required this.controller, @required this.globalKey});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      key: this.globalKey,
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: _height * 1.489),
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Container(
                padding: EdgeInsets.fromLTRB(0, _height / 24.83, 0, 0),
                child: AboutSectionText(
                  text:
                      "I describe my self as someone who's persistant, a quick learner and loves problem solving by using simble and scalable solutions.",
                ),
                // scolor: Colors.blue,
                alignment: Alignment.center,
                constraints: BoxConstraints.tightForFinite(
                    height: _height / 5, width: _height / 2.5),
              ),
              ExperienceCard(numOfExp: "01"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyOutlineButton(
                    imageSrc: "assets/images/download.png",
                    text: "My CV",
                    press: () async {
                      html.window.open(
                          "assets/pdf/anas_mansouri.pdf", 'anas_mansouri.pdf');
                    },
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  MyOutlineButton(
                    imageSrc: "assets/images/hand.png",
                    text: "Hire Me!",
                    press: () {
                      this.controller.animateTo(
                          this.controller.position.maxScrollExtent,
                          duration: Duration(microseconds: 1500),
                          curve: Curves.easeInOutExpo);
                      Toast.show(
                          "please contact me on my email or in my linkedin",
                          context,
                          duration: Toast.LENGTH_LONG,
                          gravity: Toast.BOTTOM);
                    },
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                  this.controller.animateTo(
                      this.controller.position.maxScrollExtent,
                      duration: Duration(microseconds: 1500),
                      curve: Curves.easeInOutExpo);
                  Toast.show(
                      "please contact me on my email or on my social media accounts",
                      context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM);
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "My CV",
                press: () async {
                  html.window.open("./lib/cv/cv.pdf", 'cv.pdf');
                },
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
