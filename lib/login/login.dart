import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.purple[100], Colors.pink[100]]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.red]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(150),
                        topLeft: Radius.circular(10))),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 10, right: 20),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: "E-mail",
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            hintText: "Senha",
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 120),
                      child: GestureDetector(
                        child: Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Entrar",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          color: Colors.pink[100],
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                ),
              )
            ],
          )),
    );
  }
}
