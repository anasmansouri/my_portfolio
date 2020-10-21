import 'package:flutter/material.dart';
import 'package:my_portfolio/components/hireme_card.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  var globalKey;
  RecentWorkSection({@required this.globalKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globalKey,
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          /*Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),*/
          SectionTitle(
            title: "Recent Woorks",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                    index: index,
                    press: () async {
                      String url = recentWorks[index].link_to_the_project;
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    }),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
