import 'package:flutter/material.dart';
import 'package:foodeck_app/Widgets/routes.dart';
import 'package:foodeck_app/providers/caddeal_provider.dart';
import 'package:foodeck_app/providers/items_provider.dart';
import 'package:foodeck_app/screens/intro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'screens/counter_provider.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
            create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => Itemsprovider()),
        ChangeNotifierProvider(create: (_) => caddealprovider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'inter', primaryColor: Color(0xfffF05193)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // just for tetsting
      routes: routes,
    );
  }
}
