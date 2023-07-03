import 'package:dynamic_harvest/screens/auth/login_page.dart';
import 'package:dynamic_harvest/screens/auth/signup_page.dart';
import 'package:dynamic_harvest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'screens/home_page.dart';
import 'screens/landing_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyMedium: kMyTextStyle,
          labelLarge: kMyTextStyle,
          bodyLarge: kMyTextStyle,
          titleMedium: kMyTextStyle,
          labelMedium: kMyTextStyle,
          labelSmall: kMyTextStyle,
          bodySmall: kMyTextStyle,
        ),
        canvasColor: const Color(0xff34425a),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        canvasColor: const Color(0xff34425a),
      ),
      initialRoute: _auth.currentUser != null ? '/home' : '/login',
      routes: {
        '/': (context) => const LandingPage(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
