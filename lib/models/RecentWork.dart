class RecentWork {
  final String image, category, title, link_to_the_project;
  final int id;

  RecentWork(
      {this.id,
      this.image,
      this.category,
      this.title,
      this.link_to_the_project});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
      id: 1,
      title: "Data Logger Server",
      category: "Embedded Systems",
      image: "assets/images/thumb_cloud.png",
      link_to_the_project:
          "https://github.com/anasmansouri/data_logger_server"),
  RecentWork(
      id: 2,
      title: "Raspberry Pi Pwm Driver",
      category: "Embedded Systems",
      image: "assets/images/raspberry.png",
      link_to_the_project:
          "https://github.com/anasmansouri/Raspberry-Pi-pwm-linux-driver"),
  RecentWork(
      id: 4,
      title: "smart home security system",
      category: "Embedded Systems",
      image: "assets/images/lock.png",
      link_to_the_project: "https://www.youtube.com/watch?v=_wmn8XVI0c4"),
  RecentWork(
      id: 4,
      title: "Recipe Suggestions From Ingredients App",
      category: "Mobile Development",
      image: "assets/images/thumb_hamburger.png",
      link_to_the_project:
          "https://play.google.com/store/apps/details?id=com.anas.mansouri.foodapp"),
  RecentWork(
      id: 3,
      title: "Water Purifier Company Management App",
      category: "Mobile Development",
      image: "assets/images/thumb_w.png",
      link_to_the_project:
          "https://www.youtube.com/watch?v=ntrlviHDu9E&feature=youtu.be"),
  RecentWork(
      id: 4,
      title: "Image Classification Using Convolutional Neural Network CNN ",
      category: "Artificial Intelligence",
      image: "assets/images/thumb_logo.png",
      link_to_the_project:
          "https://github.com/anasmansouri/movies-recommendation-system"),
];
