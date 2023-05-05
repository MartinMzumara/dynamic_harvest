import 'package:dynamic_harvest/utils/constants.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/landing_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            bodyText2: kMyTextStyle,
            button: kMyTextStyle,
            bodyText1: kMyTextStyle,
          ),
          canvasColor: Color(0xff34425a)),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
