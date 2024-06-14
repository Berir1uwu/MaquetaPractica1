import 'package:chinitaapp/src/page/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:chinitaapp/src/page/home_screen.dart';
import 'package:chinitaapp/src/page/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => const SplashScreen(),
        "autentication": (context) => const AuthenticationScreen(),
        "home": (context) => HomeScreen(),
      },
    );
  }
}
