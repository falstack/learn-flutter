import 'package:flutter/material.dart';

//路由跳转失败的页面
class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('404页面'),
      ),
      body: new Container(
        child: new Center(
          child: new Text("NotFoundPage"),
        ),
      ),
    );
  }
}
