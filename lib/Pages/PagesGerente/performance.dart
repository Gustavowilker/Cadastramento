import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/PagesGerente/avisoGerentePage.dart';
import 'package:flutter_application_1/Pages/PagesView/home_page.dart';
import 'package:flutter_application_1/Pages/loginPage/loginPage.dart';

class performancePage extends StatefulWidget {
  const performancePage({Key? key}) : super(key: key);

  @override
  State<performancePage> createState() => _performancePageState();
}

class _performancePageState extends State<performancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Performances'),
        backgroundColor: Colors.blue,
      ),
      drawer: Builder(
        builder: (context) => Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(
                  'UserName',
                ),
                accountEmail: Text('User.name@exemple.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/vetores-gratis/astronauta-bonito-flying-with-rocket-cartoon-icon-illustration-pessoas-ciencia-icone-conceito-isolado-premium-estilo-cartoon-plana_138676-1534.jpg?w=740')),
              ),
              ListTile(
                leading: Icon(Icons.add_chart),
                title: Text('Performance'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.add_alert_outlined),
                title: Text('Avisos'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return avisoGerentePage();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.app_registration_outlined),
                title: Text('Tarefas'),
              ),
              ListTile(
                leading: Icon(Icons.accessibility_outlined),
                title: Text('Colaboradores'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
