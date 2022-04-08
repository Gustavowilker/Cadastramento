// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class cadastre extends StatefulWidget {
  const cadastre({Key? key}) : super(key: key);

  @override
  State<cadastre> createState() => _cadastreState();
}

class _cadastreState extends State<cadastre> {
  String nome = '';
  String email = '';
  String password = '';
  String funcao = '';
  int cpf = 0;
  int matricula = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre-se'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: const Text(
                'Informe seus dados e Matricula para ter acesso às Tarefas:',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 174, 200, 212),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Text(
                    'Nome Completo:',
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    onChanged: (Text) {
                      nome = Text;
                    },
                    decoration: const InputDecoration(
                        labelText: 'ex.: Maria dos Santos Santos'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
