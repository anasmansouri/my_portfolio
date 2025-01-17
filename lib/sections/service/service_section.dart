import 'package:flutter/material.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  var globaKey;
  ServiceSection({@required this.globaKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globaKey,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )
        ],
      ),
    );
  }
}
