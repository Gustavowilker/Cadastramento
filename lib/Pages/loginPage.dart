import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/imagens/LOGO-HORIZONTAL-01.png'),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (Text) {
                              email = Text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (Text) {
                              password = Text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RaisedButton(
                            color: Color.fromARGB(255, 84, 163, 228),
                            textColor: Colors.white,
                            onPressed: () {
                              if (email == 'gustavo' && password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else if (email == 'gustavo wilker' &&
                                  password == '1234') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/performance');
                              } else {
                                print('Login inválido');
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/imagens/papelParede_login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          _body(),
        ],
      ),
    );
  }
}
