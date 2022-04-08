import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/provider/users.dart';
import 'package:provider/provider.dart';

class cadastre extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  final isValid = _form.currentState?.validate();
                  if (isValid == true) {
                    _form.currentState?.save();
                    Provider.of<Users>(context, listen: false).put(
                      User(
                          id: _formData['matricula'].toString(),
                          name: _formData['name'].toString(),
                          email: _formData['email'].toString(),
                          cpf: _formData['cpf'].toString(),
                          funcao: _formData['funcao'].toString(),
                          password: _formData['password'].toString(),
                          avatarUrl: _formData['avatarUrl'].toString()),
                    );

                    Navigator.of(context).pop();
                  }
                },
                icon: Icon(Icons.save))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Nome inválido';
                    } else if (value.trim().length < 3) {
                      return 'Nome muito pequeno. Mínimo 3 letras';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['name'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'CPF'),
                  onSaved: (value) => _formData['cpf'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nº de Matrícula'),
                  onSaved: (value) => _formData['matricula'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  onSaved: (value) => _formData['email'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  onSaved: (value) => _formData['password'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Função'),
                  onSaved: (value) => _formData['funcao'] = value.toString(),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Url do Avatar'),
                  onSaved: (value) => _formData['avatarUrl'] = value.toString(),
                ),
              ],
            ),
          ),
        ));
  }
}
