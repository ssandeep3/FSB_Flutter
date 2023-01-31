import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget {
// This widget is root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Everyone Flutter Application',
      theme: ThemeData(
// This is theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Homepage'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title="HomePage"}) : super(key:
  key);
// This widget is home page of our application.
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text('Hello Everyone'),
      ),
    );
  }
}