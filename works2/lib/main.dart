import 'package:flutter/material.dart';
import 'package:works2/screens/myhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
