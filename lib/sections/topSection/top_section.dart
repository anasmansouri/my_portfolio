import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  var globalKey;

  TopSection({this.keys, @required this.globalKey});
  var keys;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: this.globalKey,
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/thumb_background.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            /*Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),*/

            Positioned(
              bottom: 0,
              child: Menu(
                keys: this.keys,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
