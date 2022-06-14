import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/Widgets/card_categories.dart';
import 'package:foodeck_app/Widgets/card_deals_items.dart';
import 'package:foodeck_app/providers/caddeal_provider.dart';
import 'package:foodeck_app/providers/items_provider.dart';
import 'package:foodeck_app/screens/card_deals.dart';
import 'package:foodeck_app/Widgets/card_items.dart';
import 'package:foodeck_app/Widgets/card_swiper.dart';
import 'package:foodeck_app/screens/food_menu.dart';
import 'package:provider/provider.dart';

class Exolore extends StatefulWidget {
  Exolore({Key? key}) : super(key: key);

  @override
  _ExoloreState createState() => _ExoloreState();
}

class _ExoloreState extends State<Exolore> {
  final nameHolder = TextEditingController();
  clearTextInput() {
    nameHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    final itemspovider = Provider.of<Itemsprovider>(context);
    List<CardItems> itemslist = itemspovider.items;
    final productsProvider = Provider.of<caddealprovider>(context);
    List<CadDealItem> CadDealItemList = productsProvider.caddealproviders;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: SvgPicture.asset('assets/MapPin.svg'),
                ),
                Flexible(
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        text: 'Block B Phase 2 Johar Town, Lahore'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: TextField(
                    controller: nameHolder,
                    autocorrect: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            /* Clear the search field */ clearTextInput();
                          },
                        ),
                        hintText: 'Search...',
                        border: InputBorder.none),
                  ),
                ),
              ),
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Home Bar.png'), fit: BoxFit.fill),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          // SliverAppBar(
          //   snap: false,
          //   floating: true,
          //   centerTitle: true,
          //   pinned: true,
          //   expandedHeight: 130,
          //   title: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(
          //           right: 10,
          //         ),
          //         child: SvgPicture.asset('assets/MapPin.svg'),
          //       ),
          //       Flexible(
          //         child: RichText(
          //           overflow: TextOverflow.ellipsis,
          //           text: TextSpan(
          //               style: TextStyle(color: Colors.white, fontSize: 20),
          //               text: 'Block B Phase 2 Johar Town, Lahore'),
          //         ),
          //       )
          //     ],
          //   ),
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.asset(
          //       'images/Home Bar.png',
          //       fit: BoxFit.cover,
          //     ),
          //     centerTitle: true,
          //     title: Container(
          //       width: MediaQuery.of(context).size.width * 0.60,
          //       height: 34,
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(11)),
          //       child: Center(
          //         child: TextField(
          //           controller: nameHolder,
          //           autocorrect: true,
          //           decoration: InputDecoration(
          //               prefixIcon: const Icon(Icons.search),
          //               suffixIcon: IconButton(
          //                 icon: const Icon(Icons.clear),
          //                 onPressed: () {
          //                   /* Clear the search field */ clearTextInput();
          //                 },
          //               ),
          //               hintText: 'Search...',
          //               border: InputBorder.none),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: CategorieCard(
                      cardheight: 200,
                      cardwidth: MediaQuery.of(context).size.width * 0.90,
                      imagelink: 'images/Img.png',
                      Title: 'Food',
                      subTitle: 'Order food you love',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: CategorieCard(
                            cardheight: 160,
                            cardwidth: MediaQuery.of(context).size.width * 0.42,
                            imagelink: 'images/Img1.png',
                            Title: 'Grocery',
                            subTitle: 'Shop daily life items',
                          ),
                        ),
                        CategorieCard(
                          cardheight: 160,
                          cardwidth: MediaQuery.of(context).size.width * 0.42,
                          imagelink: 'images/Img3.png',
                          Title: 'Deserts',
                          subTitle: 'Something Sweet',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: CardSwiper(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 33, 24, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('dealssss');
                          },
                          child: Text(
                            'Deals',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SvgPicture.asset('assets/ArrowRight.svg')
                      ],
                    ),
                  ),
                  DealsCard(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 33, 24, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('objectzzzzzzzzzzz');
                          },
                          child: Text(
                            'Explore More',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            childCount: 1,
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodMenu(pass: itemslist[index]),
                      ));
                },
                child: CardItems(
                  imageUrl: itemslist[index].imageUrl,
                  minutes: itemslist[index].minutes,
                  title: itemslist[index].title,
                  rating: itemslist[index].rating,
                  subtitle: itemslist[index].subtitle,
                ),
              );
            },
            childCount: itemslist.length,
          )),
        ],
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              child: GestureDetector(
                onTap: () {
                  print('ShopTap'); // Give Him a navigator
                },
                child: SvgPicture.asset(
                  'assets/ShoppingCart.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor),
              width: 58,
              height: 58,
            ),
            Positioned(
              top: 4,
              right: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text(
                    '6',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                width: 22,
                height: 22,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
