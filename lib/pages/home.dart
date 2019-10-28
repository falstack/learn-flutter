import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  printNumber(num aNumber) {
    print('The number is $aNumber.'); // 在控制台打印内容。
  }

  static const number = 41; // 定义并初始化一个编译时常量。
  static const arr = [
    {'name': '随机列表并包含点赞', 'path': '/widgets-demo-01'},
    {'name': '使用 MD 脚手架', 'path': '/widgets-demo-02'},
    {'name': '生成带状态的组件', 'path': '/widgets-demo-03'},
    {'name': '测试 HTTP', 'path': '/widgets-demo-04'},
    {'name': '退出登录', 'path': '/logout'}
  ];

  @override
  Widget build(BuildContext context) {
    printNumber(number); // 调用一个方法。
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('主页'),
      ),
      body: new Container(
          child: new ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: new Text(arr[index]['name']),
                  onTap: () {
                    Navigator.of(context).pushNamed(arr[index]['path']);
                  },
                );
              })),
    );
  }
}
