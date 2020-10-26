import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'components/socal_card.dart';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  var globalKey;
  ContactSection({@required this.globalKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globalKey,
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
          //SizedBox(height: kDefaultPadding * 2.5),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Wrap(
        children: [
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            alignment: WrapAlignment.center,
            children: [
              SocalCard(
                color: Color(0xFFFFFF),
                iconSrc: "assets/images/gmail.png",
                name: 'anasmansouribusiness@gmail.com',
                press: () {
                  Toast.show(
                      "contact me on : anasmansouribusiness@gmail.com", context,
                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                },
              ),
              SocalCard(
                color: Color(0xFFFFFF),
                iconSrc: "assets/images/linkedin.png",
                name: 'Anas Mansouri ',
                press: () async {
                  const url =
                      "https://www.linkedin.com/in/anas-mansouri-aa32a2136/";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Could not launch $url";
                  }
                },
              ),
              SocalCard(
                color: Color(0xFFFFFF),
                iconSrc: "assets/images/git.png",
                name: 'Anas Mansouri',
                press: () async {
                  const url = "https://github.com/anasmansouri";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Could not launch $url";
                  }
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          // ContactForm(),
        ],
      ),
    );
  }
}
