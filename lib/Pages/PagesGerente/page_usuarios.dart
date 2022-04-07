import 'package:flutter/material.dart';
import 'package:flutter_application_1/componets/user_tile.dart';
import 'package:flutter_application_1/data/dummy_users.dart';
import 'package:flutter_application_1/models/user.dart';

class page_usuario extends StatelessWidget {
  const page_usuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Colaboradores'),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
