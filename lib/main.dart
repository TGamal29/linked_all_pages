import 'package:flutter/material.dart';
import 'package:linked_all_pages/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/SplashScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/SplashScreen': (context) => const SplashScreen(),
    },
  ));
}
