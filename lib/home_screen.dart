import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/sections/about/about_section.dart';
import 'package:my_portfolio/sections/contact/contact_section.dart';
import 'package:my_portfolio/sections/feedback/feedback_section.dart';
import 'package:my_portfolio/sections/recent_work/recent_work_section.dart';
import 'package:my_portfolio/sections/service/service_section.dart';
import 'package:my_portfolio/sections/topSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController controller = ScrollController();
  var keys = new List<GlobalKey>(6);
  void init_global_keys() {
    for (int i = 0; i < 6; i++) {
      keys[i] = new GlobalKey();
    }
  }

  @override
  Widget build(BuildContext context) {
    init_global_keys();

    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            TopSection(
              globalKey: keys[0],
              keys: this.keys,
            ),
            // SizedBox(height: kDefaultPadding * 2),
            AboutSection(
              globalKey: keys[1],
              controller: this.controller,
            ),
            ServiceSection(
              globaKey: keys[2],
            ),
            RecentWorkSection(
              globalKey: keys[3],
            ),
            FeedbackSection(
              globalKey: keys[4],
            ),
            SizedBox(height: kDefaultPadding),
            ContactSection(
              globalKey: keys[5],
            ),
            /*RaisedButton(
              onPressed: () => Scrollable.ensureVisible(keys[0].currentContext),
              child: new Text("Scroll to data"),
            ),*/
          ],
        ),
      ),
    );
  }
}
