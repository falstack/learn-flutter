import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text("这是登录界面"),
          new RaisedButton(
            child: new Text("点击登录成功，跳转到主页"),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/home");
            },
          ),
          new RaisedButton(
            child: new Text("点击跳转到NotFoundPage"),
            onPressed: () {
              Navigator.of(context).pushNamed("/111");
            },
          ),
        ],
      ),
    );
  }
}