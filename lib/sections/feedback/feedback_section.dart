import 'package:flutter/material.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  var globalKey;
  FeedbackSection({@required this.globalKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globalKey,
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      // constraints: BoxConstraints(maxWidth: 1110),
      width: double.infinity,
      child: Column(
        children: [
          SectionTitle(
            title: "Testimonial",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            alignment: WrapAlignment.center,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index),
            ),
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}
