import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final loginController = TextEditingController(text: 'Введите номер телефона');
  final passwordController = TextEditingController(text: 'Пароль ');

  bool showLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      label: SizedBox.shrink(),
                    ),
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/image1.png',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "КОРТРОСС",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showLogin = true;
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 50,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Войти',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              showLogin
                                  ? Container(
                                      height: 4,
                                      width: 100,
                                      color: Colors.red,
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showLogin = false;
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 50,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Регистрация',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              showLogin
                                  ? Container()
                                  : Container(
                                      height: 4,
                                      width: 100,
                                      color: Colors.red,
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (showLogin)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Для входа вы можете использовать номер телефона или электронную почту",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
