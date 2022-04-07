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

  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    _itens.putIfAbsent(
        '100',
        () => User(
            id: '100',
            name: 'Teste',
            email: 'teste@teste.com',
            cpf: '000.000.000-05',
            funcao: 'Colaborador',
            password: '1234',
            avatarUrl: ''));

    //adicionar
    //alterar

    //notifyListeners();
  }
}
