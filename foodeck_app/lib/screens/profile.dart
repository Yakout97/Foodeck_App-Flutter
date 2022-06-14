import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/Widgets/profile_card.dart';
import 'package:foodeck_app/screens/counter_provider.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('jh');
    var count = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfffF2F2F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35, 0, 8),
                      child: CardProfile(),
                    ),
                    Text('John Doe'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 40),
                      child: Text('Lahore,Pakistan'),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 0, 8),
              child: Text(
                'Account Setting',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('Account', 0, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('My locations', 1, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('My orders', 2, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('Payment Methods', 3, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('My reviews', 4, context)),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 23, 40, 8),
              child: Text(
                'General Settings',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('About us', 5, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: userListTitle('Data usage', 6, context)),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
                child: ElevatedButton(
                    onPressed: () {
                      count.Counter();
                    },
                    child: Text('Goo'))),
            CounterResive(),
          ],
        ),
      ),
    );
  }
}

List<SvgPicture> userTitleIcons = [
  SvgPicture.asset('assets/icons_listTitle/UserCircle.svg'),
  SvgPicture.asset('assets/icons_listTitle/MapPin.svg'),
  SvgPicture.asset('assets/icons_listTitle/Package.svg'),
  SvgPicture.asset('assets/icons_listTitle/CreditCard.svg'),
  SvgPicture.asset('assets/icons_listTitle/Star.svg'),
  SvgPicture.asset('assets/icons_listTitle/Database.svg'),
  SvgPicture.asset('assets/icons_listTitle/Info.svg'),
];

Widget userListTitle(String title, int index, BuildContext context) {
  return Material(
    child: InkWell(
      splashColor: Colors.red,
      child: ListTile(
        minLeadingWidth: 30,
        horizontalTitleGap: 1,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: userTitleIcons[index],
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 17),
        ),
        onTap: () {},
        trailing: Icon(Icons.chevron_right),
      ),
    ),
  );
}
