import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage:
          AssetImage('images/aiony-haust-3TLl_97HNJo-unsplash.jpg'),
      radius: 50,
    );
  }
}
