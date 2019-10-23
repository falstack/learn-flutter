import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  printNumber(num aNumber) {
    print('The number is ${aNumber}.'); // 在控制台打印内容。
  }

  var number = 41; // 定义并初始化一个变量。

  @override
  Widget build(BuildContext context) {
    printNumber(number); // 调用一个方法。
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('主页'),
      ),
      body: new Container(
          child: new ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: new Text("第$index项"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/detail");
                  },
                );
              })),
    );
  }
}
