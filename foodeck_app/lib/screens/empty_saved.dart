import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptySaved extends StatelessWidget {
  const EmptySaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/Empty-pana.svg',
              height: 300,
            ),
          ],
        ),
        Text(
          'Your Saved are waiting',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'There are no saving yet...',
            style: TextStyle(color: Color(0xff969696)),
          ),
        )
      ],
    );
  }
}
