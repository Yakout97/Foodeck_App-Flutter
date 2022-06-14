import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodeck_app/Widgets/routes.dart';

class CategorieCard extends StatelessWidget {
  final double cardheight;
  final double cardwidth;
  final String imagelink;
  final String Title;
  final String subTitle;
  const CategorieCard(
      {Key? key,
      required this.cardheight,
      required this.cardwidth,
      required this.imagelink,
      required this.Title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('hhhh');
      },
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Container(
              height: cardheight,
              width: cardwidth,
              // width: MediaQuery.of(context).size.width * 0.90,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.25, sigmaY: 0.25),
                child: Ink.image(
                  image: AssetImage(imagelink),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 14,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      Title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    subTitle,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
