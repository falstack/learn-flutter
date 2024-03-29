import 'package:flutter/material.dart';
import './pages/launch.dart' show LaunchPage;
import './pages/404.dart' show NotFoundPage;
import './pages/login.dart' show LoginPage;
import './pages/home.dart' show HomePage;
import './pages/logout.dart' show LogoutPage;
import './pages/widgets/demo-01.dart' show WidgetDemo01App;
import './pages/widgets/demo-02.dart' show WidgetDemo02App;
import './pages/widgets/demo-03.dart' show WidgetDemo03App;
import './pages/widgets/demo-04-http.dart' show WidgetDemo04App;

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
        "/logout": (context) => new LogoutPage(),
        "/widgets-demo-01": (context) => new WidgetDemo01App(),
        "/widgets-demo-02": (context) => new WidgetDemo02App(),
        "/widgets-demo-03": (context) => new WidgetDemo03App(),
        "/widgets-demo-04": (context) => new WidgetDemo04App(),
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
