import 'package:flutter/material.dart';
import 'package:survey/pages/egitimsayfasi2.dart';
import 'package:survey/pages/dashboard.dart';
import 'package:survey/screens/dashboard.dart';
import 'package:survey/screens/mysurveydetail.dart';
// import 'package:survey/pages/eventspage.dart';
import 'package:survey/screens/surveypage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Dashboard(),
    );
  }
}
