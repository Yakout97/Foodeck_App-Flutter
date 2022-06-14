import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/rendering.dart';

class CardSwiper extends StatefulWidget {
  CardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184,
      child: Swiper(
        scrollDirection: Axis.horizontal,
        duration: 500,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: SwiperItem());
        },
        itemCount: 3,
        pagination: SwiperPagination(margin: EdgeInsets.all(10)),
        viewportFraction: 0.9,
        scale: 1,
      ),
    );
  }
}

class SwiperItem extends StatelessWidget {
  const SwiperItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Ink.image(
              image: AssetImage('images/Banners2.png'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
