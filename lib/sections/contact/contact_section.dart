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
  @override
  Widget build(BuildContext context) {
    return Container(
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
    return Container(
      constraints: BoxConstraints(maxWidth: 1110, maxHeight: 300),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                iconSrc: "assets/images/messanger.png",
                name: 'Anas Mansouri',
                press: () async {
                  const url = "https://www.facebook.com/savana.man.3/";
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

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () async {
                  Toast.show("Toast plugin app", context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  String username = 'htmlphpcss3@gmail.com';
                  String password = 'cN9NkdmQME3ho6';

                  final smtpServer = gmail(username, password);
                  // Use the SmtpServer class to configure an SMTP server:
                  // final smtpServer = SmtpServer('smtp.domain.com');
                  // See the named arguments of SmtpServer for further configuration
                  // options.

                  // Create our message.
                  final message = Message()
                    ..from = Address(username, 'anas mansouri')
                    ..recipients.add('anas.mansouri@usmba.ac.ma')
                    //..ccRecipients
                    //    .addAll(['destCc1@example.com', 'destCc2@example.com'])
                    //..bccRecipients.add(Address('bccAddress@example.com'))
                    ..subject =
                        'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
                    ..text =
                        'This is the plain text.\nThis is line 2 of the text part.'
                    ..html =
                        "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

                  try {
                    final sendReport = await send(message, smtpServer);
                    print('Message sent: ' + sendReport.toString());
                  } on MailerException catch (e) {
                    print('Message not sent.');
                    for (var p in e.problems) {
                      print('Problem: ${p.code}: ${p.msg}');
                    }
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
