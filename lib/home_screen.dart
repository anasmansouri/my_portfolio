import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/sections/about/about_section.dart';
import 'package:my_portfolio/sections/contact/contact_section.dart';
import 'package:my_portfolio/sections/feedback/feedback_section.dart';
import 'package:my_portfolio/sections/recent_work/recent_work_section.dart';
import 'package:my_portfolio/sections/service/service_section.dart';
import 'package:my_portfolio/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(
              controller: this.controller,
            ),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection()
          ],
        ),
      ),
    );
  }

  void _onTab() {
    controller.animateTo(0,
        duration: Duration(microseconds: 500), curve: Curves.easeInOut);
  }
}
