import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                height: 50,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(5.0)),
                      TextField(
                        obscureText: true,
                        onChanged: (text) {
                          password = text;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.blue[900],
                          onPressed: () {
                            if (email == 'teste@testou.com' &&
                                password == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                              print('ok');
                            } else {
                              print('login invalido');
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Container(height: 10),
                      Text('Esqueceu sua senha ? | Registre-se'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(color: Colors.black.withOpacity(0.1)),
        _body()
      ],
    ));
  }
}
