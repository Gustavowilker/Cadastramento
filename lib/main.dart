import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/PagesGerente/performance.dart';
import 'package:flutter_application_1/Pages/home_page.dart';

import 'Pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => loginPage(),
        '/home': (context) => HomePage(),
        '/performance': (context) => performancePage(),
      },
    );
  }
}
