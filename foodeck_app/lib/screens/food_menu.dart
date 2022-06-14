import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/Widgets/card_deals_items.dart';
import 'package:provider/provider.dart';

import '../providers/caddeal_provider.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({Key? key, product, this.pass}) : super(key: key);
  final pass;
  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> with TickerProviderStateMixin {
  // List<Productlist> productList = [
  //   Productlist(),
  //   Productlist(),
  //   Productlist(),
  //   Productlist(),
  // ];
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    PageController _pageController = PageController(
      initialPage: 0,
    );

    final productsProvider = Provider.of<caddealprovider>(context);
    List<CadDealItem> CadDealItemList = productsProvider.caddealproviders;
    return Scaffold(
      backgroundColor: Color(0xfffF2F2F7),
      appBar: PreferredSize(
        child: AppData(
          imageUrl: widget.pass.imageUrl,
          title: widget.pass.title,
          subtitle: widget.pass.subtitle,
        ),
        preferredSize: Size.fromHeight(200.0),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: 70,
              leadingWidth: 0,
              floating: false,
              pinned: false,
              title: SimpleData(
                rating: widget.pass.rating,
                time: widget.pass.minutes,
                kilometer: '1.4km',
              ),
            ),
            SliverAppBar(
                elevation: 1,
                toolbarHeight: 50,
                backgroundColor: Colors.white,
                floating: false,
                pinned: true,
                leadingWidth: 0,
                title: DefaultTabController(
                  length: 3,
                  child: Expanded(
                    child: TabBar(
                        controller: _tabcontroller,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        labelPadding: EdgeInsets.all(12),
                        isScrollable: true,
                        indicatorColor: Colors.red,
                        labelColor: Theme.of(context).primaryColor,
                        unselectedLabelColor: Color(0xfff8E8E93),
                        indicator: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          )),
                        ),
                        tabs: [
                          Tab(text: 'Popular'),
                          Tab(text: 'Deals'),
                          Tab(text: 'Wraps'),
                          // Text('Beverages'),
                          // Text('Sandwiches'),
                        ]),
                  ),
                )),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProductStacture(
                  Productlist: Productlist(LadingTitle: 'productsszz'),
                  changeName: 'product',
                );
              },

              // return Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 5),
              //       child: ProductStacture(
              //         Productlist: productList[2],
              //         changeName: "Product",
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 5),
              //       child: ProductStacture(
              //         Productlist: productList[2],
              //         changeName: "Product",
              //       ),
              //     ),
              //   ],
              // );
            )),
          ],
        ),
      ),
    );
  }
}

//*************** */ appbar data image and text*******************

class AppData extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const AppData({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/ArrowLeft (1).svg')),
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/Heart.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/ShareNetwork.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/DotsThreeVertical.svg'))
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.transparent,
              Colors.transparent,
              Colors.black
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1.0, 0.8, 1],
          )),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        titlePadding: EdgeInsets.fromLTRB(24, 127, 0, 0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

//----------------------------------SimpleData change--------------------------//
class SimpleData extends StatelessWidget {
  final String rating;
  final String time;
  final String kilometer;
  const SimpleData({
    Key? key,
    required this.rating,
    required this.time,
    required this.kilometer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SvgPicture.asset('assets/Starbig.svg'),
            Text(
              rating,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            SvgPicture.asset('assets/Clock.svg'),
            Text(
              time,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            SvgPicture.asset('assets/MapPinblack.svg'),
            Text(
              kilometer,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}

//-----------------------For make scroll behavior disapered---------------------//
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

//--------------------------------productlistshape---------------------------------//

class Productlist extends StatelessWidget {
  final String LadingTitle;
  Productlist({
    Key? key,
    required this.LadingTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 16, 0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'images/le-buzz-zQLYPVt89d4-unsplash.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  width: 62,
                  height: 62,
                ),
              ),
              Container(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LadingTitle,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        "8” pizza with regular soft drink",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xfff8E8E93),
                        ),
                      ),
                    ),
                    Text(
                      "\$10",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//-------------------------productstracture--------------------------//

class ProductStacture extends StatelessWidget {
  final Productlist;
  final String changeName;
  ProductStacture(
      {Key? key, required this.Productlist, required this.changeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
            child: Text(
              changeName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Productlist,
          Divider(
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class ListViewContext extends StatelessWidget {
  const ListViewContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('sssxxx'),
    );
  }
}
