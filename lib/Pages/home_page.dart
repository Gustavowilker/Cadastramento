import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/PagesView/Avisos_page.dart';


import 'PagesView/Tarefas_page.dart';

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
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        title: const Text('App da firma'),
        backgroundColor: const Color(0xff062C30),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('UserName'),
              accountEmail: Text('User.name@exemple.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/vetores-gratis/astronauta-bonito-flying-with-rocket-cartoon-icon-illustration-pessoas-ciencia-icone-conceito-isolado-premium-estilo-cartoon-plana_138676-1534.jpg?w=740')),
            ),
            ListTile(
              title: const Text(
                'Avisos',
                style: TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: const Text(
                'Tarefas',
                style: TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          Avisos(),
          Tarefas(),
        ],
      ),
    );
  }
}