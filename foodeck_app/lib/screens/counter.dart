import 'package:flutter/material.dart';
import 'package:foodeck_app/screens/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterResive extends StatelessWidget {
  CounterResive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);
    return Container(
        margin: EdgeInsets.fromLTRB(0, 1, 0, 1), //check the margin again
        child: Text('${count.c}'));
  }
}
