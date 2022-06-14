import 'package:flutter/foundation.dart';
import 'package:foodeck_app/Widgets/card_items.dart';

class Itemsprovider with ChangeNotifier {
  List<CardItems> _cardItems = [
    CardItems(
      imageUrl: 'images/Image.png',
      minutes: '40 min',
      title: "Jean's Cakes",
      rating: "4.2",
      subtitle: 'Johar Town',
    ),
    CardItems(
      imageUrl: 'images/Image2.png',
      minutes: '20 min',
      title: "Thicc Shakes",
      rating: "4.5",
      subtitle: 'Wapda Town',
    ),
    CardItems(
      imageUrl: 'images/Image3.png',
      minutes: '30 min',
      title: "Daily Deli",
      rating: "4.8",
      subtitle: 'Garden Town',
    ),
    CardItems(
      imageUrl: 'images/Image4.png',
      minutes: '40 min',
      title: "Hot n Sour",
      rating: '4.8',
      subtitle: 'Johar Town',
    ),
    CardItems(
      imageUrl: 'images/Image5.png',
      minutes: '40 min',
      title: "Johnny Juice",
      rating: "4.8",
      subtitle: 'Wapda Town',
    ),
    CardItems(
      imageUrl: 'images/Image5.png',
      minutes: '40 min',
      title: "Johnny Juice",
      rating: "4.8",
      subtitle: 'Wapda Town',
    ),
  ];

  List<CardItems> get items {
    return _cardItems;
  }
}
