import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polus_hack2/main_pages/authorization_page.dart';
import 'package:polus_hack2/main_pages/bottom_nav_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const AuthPage(),
      '/main': (context) => const OnBoarding(),
    },
  ));
}
