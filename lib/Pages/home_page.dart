import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/PagesView/one_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Color.fromARGB(255, 62, 164, 211),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: CircleAvatar(),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(() {
            indexBottomNavigationBar = page;
          });
          _pageController.animateToPage(page,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInCirc);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp), label: "item 01"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp), label: "item 02"),
        ],
      ),
    );
  }
}
