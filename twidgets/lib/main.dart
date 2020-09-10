import 'package:flutter/material.dart';
import 'package:twidgets/twidgets/texpanded.dart';
import 'package:twidgets/twidgets/tflexible.dart';
// import 'package:twidgets/twidgets/tflexible.dart';
import 'package:twidgets/twidgets/ttransform.dart';
import 'package:twidgets/twidgets/tflex.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TFlex(),
    );
  }
}
