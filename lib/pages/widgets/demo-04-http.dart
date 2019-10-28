import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

//路由跳转失败的页面
class WidgetDemo04App extends StatelessWidget {
  void getHttp() async {
    try {
      Response response = await Dio().get("https://api.calibur.tv/v1/tag/hottest");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      appBar: new AppBar(
        title: new Text('http'),
      ),
      body: new Container(
        child: new Center(
          child: new Text("http test"),
        ),
      ),
    );
  }
}
