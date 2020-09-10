import 'package:flutter/material.dart';

class TFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flex Widget")),
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(child: myBox(Colors.green)),
          Expanded(child: myBox(Colors.blue)),
          Expanded(child: myBox(Colors.red))
        ],
      ),
    );
  }

  Container myBox(Color myColor) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.blue,
        ),
      ),
      child: Container(
        color: myColor,
      ),
    );
  }
}
