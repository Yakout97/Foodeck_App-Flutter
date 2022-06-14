import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/screens/explore.dart';
import 'package:foodeck_app/screens/notifications.dart';
import 'package:foodeck_app/screens/profile.dart';
import 'package:foodeck_app/screens/saved.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List? screens;
  int _selectedIndex = 0;

  @override
  void initState() {
    screens = [
      {
        'screen': Exolore(),
      },
      {
        'screen': Saved(),
      },
      {
        'screen': Notifications(),
      },
      {
        'screen': Profile(),
      }
    ];
    super.initState();
  }

  void selectedScreens(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens![_selectedIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5, //remember you will change it after to 0 percet.
        selectedFontSize: 12.4,
        unselectedFontSize: 12.4,
        items: <BottomNavigationBarItem>[
          // Explore NavigatorIcon

          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/MagnifyingGlass.svg',
              ),
              label: 'Exolore',
              activeIcon: SvgPicture.asset(
                'assets/MagnifyingGlass.svg',
                color: Color(0xfffF05193),
              )),
          // Saved NavigatorIcon

          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Heart.svg',
              ),
              label: 'Saved',
              activeIcon: SvgPicture.asset(
                'assets/Heart.svg',
                color: Color(0xfffF05193),
              )),
          // Notification NavigatorIcon
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Bell.svg',
            ),
            label: 'Notification',
            activeIcon: SvgPicture.asset(
              'assets/Bell.svg',
              color: Color(0xfffF05193),
            ),
          ),
          // Pofile NavigatorIcon

          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/User.svg',
              ),
              label: 'Profile',
              activeIcon: SvgPicture.asset(
                'assets/User.svg',
                color: Color(0xfffF05193),
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xfffF05193),
        unselectedItemColor: Color(0xfff8E8E93),
        onTap: selectedScreens,
      ),
    );
  }
}
