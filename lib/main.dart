import 'package:flutter/material.dart';
import 'package:proapps/screens/splash.dart';
import 'screens/login.dart';
import 'screens/home_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Splash(),
      '/login': (context) => Login(),
      '/home': (context) => const Home(),
      // '/track-ticket':(context) => trackticket(),
      // '/open-ticket':(context) => openticket(),
      // '/announcement':(context) => announcement(),
    },
  ));
}
