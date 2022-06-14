import 'package:flutter/cupertino.dart';

class DataApp with ChangeNotifier {
  List<dynamic> _DataList = [
    MyResturant(
        imageUrl: 'images/Image.png',
        minutes: '42 min',
        title: "Jean's Cakes",
        rating: '4.3',
        subtitle: 'Johar Town',
        Test: 'herr'),
  ];
}

class MyResturant {
  String imageUrl;
  String minutes;
  String title;
  String rating;
  String subtitle;
  String Test = '';

  MyResturant({
    required this.imageUrl,
    required this.minutes,
    required this.title,
    required this.rating,
    required this.subtitle,
    String? Test,
  });
}
