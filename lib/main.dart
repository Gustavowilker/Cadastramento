import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/PagesGerente/performance.dart';
import 'package:flutter_application_1/Pages/PagesView/home_page.dart';
import 'package:flutter_application_1/provider/users.dart';
import 'package:provider/provider.dart';

import 'Pages/loginPage/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        )
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
