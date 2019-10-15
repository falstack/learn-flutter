import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
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
