import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Tony",
    review: "Very professional programmer with a limitless creativity .",
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Abel-ilah",
    review:
        """One of the best things that i loved while working with mansouri is his power of solving complex problems and devide them to little ones .""",
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Youssef",
    review:
        "i love in mansouri his enthousiasme and passion towards programming .",
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];
