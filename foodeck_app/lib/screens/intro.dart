import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final routes = 'LoginPage';
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(routes);
        },
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'images/BG (1).png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/Foodeck.png'),
                const Center(
                  child: Text(
                    'Foodeck',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    'Aliquam commodo tortor lacinia lorem\n accumsan aliquam',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
