import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_users.dart';
import 'package:flutter_application_1/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _itens = {...DUMMY_USERS};

  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }
}
