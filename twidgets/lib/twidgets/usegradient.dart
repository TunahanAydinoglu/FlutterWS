import 'package:flutter/material.dart';

class UseGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.green],
              stops: [0.0, 0.7],
            ),
          ),
        ),
      ),
    );
  }
}
