import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/Widgets/card_deals_items.dart';
import 'package:foodeck_app/Widgets/card_items.dart';
import 'package:foodeck_app/providers/caddeal_provider.dart';
import 'package:foodeck_app/screens/food_menu.dart';
import 'package:provider/provider.dart';

class DealsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<caddealprovider>(context);
    List<CadDealItem> CadDealItemList = productsProvider.caddealproviders;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: List.generate(CadDealItemList.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FoodMenu(pass: CadDealItemList[index]),
                      ));
                  // Navigator.of(context).pushNamed('foodmenu', arguments: index);
                  // print(CadDealItemList[index].rating);
                },
                child: CadDealItem(
                  imageUrl: CadDealItemList[index].imageUrl,
                  minutes: CadDealItemList[index].minutes,
                  title: CadDealItemList[index].title,
                  rating: CadDealItemList[index].rating,
                  subtitle: CadDealItemList[index].subtitle,
                ),
              );
            }),
          ),
        ));
  }
}
