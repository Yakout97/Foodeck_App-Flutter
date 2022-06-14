import 'package:flutter/cupertino.dart';
import 'package:foodeck_app/Widgets/card_deals_items.dart';
import 'package:provider/provider.dart';

class caddealprovider with ChangeNotifier {
  List<CadDealItem> _caddealprovider = [
    CadDealItem(
      imageUrl: 'images/Image.png',
      minutes: '42 min',
      title: "Jean's Cakes",
      rating: '4.3',
      subtitle: 'Johar Town',
      YoungTitle: 'woow',
    ),
    CadDealItem(
      imageUrl: 'images/chad-montano-eeqbbemH9-c-unsplash.jpg',
      minutes: '25 min',
      title: "Lolis Tella",
      rating: '3.8',
      subtitle: 'KafrAbdo',
    ),
    CadDealItem(
      imageUrl: 'images/casey-lee-awj7sRviVXo-unsplash.jpg',
      minutes: '48 min',
      title: "Babeleon",
      rating: '4.7',
      subtitle: 'SanStefano',
    ),
    CadDealItem(
      imageUrl: 'images/davide-cantelli-jpkfc5_d-DI-unsplash.jpg',
      minutes: '40 min',
      title: "ThawraButcher",
      rating: '4.4',
      subtitle: 'Sedibeshr',
    ),
    CadDealItem(
      imageUrl: 'images/ian-dooley-TLD6iCOlyb0-unsplash.jpg',
      minutes: '41 min',
      title: "Croks IceCream",
      rating: '4.2',
      subtitle: 'Gleem',
    ),
  ];

  List<CadDealItem> get caddealproviders {
    return [..._caddealprovider];
  }
}

// Still need to add the kilometers the distination but after adding maps