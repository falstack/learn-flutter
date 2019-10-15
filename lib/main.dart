import 'package:flutter/material.dart';
import './pages/launch.dart' show LaunchPage;
import './pages/404.dart' show NotFoundPage;
import './pages/login.dart' show LoginPage;
import './pages/home.dart' show HomePage;
import './pages/detail.dart' show DetailPage;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //定义路由
      routes: {
        //Map<String, WidgetBuilder>
        "/launch": (context) => new LaunchPage(),
        "/login": (context) => new LoginPage(),
        "/home": (context) => new HomePage(),
        "/detail": (context) => new DetailPage(),
      },
      //没有路由可以进行匹配的时候
      onUnknownRoute: (RouteSettings setting) {
        String name = setting.name;
        print("onUnknownRoute:$name");
        return new MaterialPageRoute(builder: (context) {
          return new NotFoundPage();
        });
      },
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LaunchPage(),
    );
  }
}
