import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 3,
    title: "Embedded Systems Development",
    image: "assets/images/micro1.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Artificial Intelligence",
    image: "assets/images/ai.png",
    color: Color.fromARGB(255, 6, 165, 255),
  ),
  Service(
    id: 2,
    title: "Web Development",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 1,
    title: "Mobile Development",
    image: "assets/images/mobile1.png",
    color: Color(0xFFD9FFFC),
  ),
];
