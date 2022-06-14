import 'package:flutter/material.dart';
import 'package:foodeck_app/screens/empty_saved.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptySaved(),
    );
  }
}
