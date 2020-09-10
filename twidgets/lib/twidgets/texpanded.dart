import 'package:flutter/material.dart';

class TExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Expanded")),
      ),
      body: Container(
        child: Row(
          children: [
            RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("button1"),
            ),
            Expanded(
              flex: 5,
              child: RaisedButton(
                color: Colors.yellow,
                onPressed: () {},
                child: Text("button1"),
              ),
            ),
            Expanded(
              flex: 3,
              child: RaisedButton(
                color: Colors.green,
                onPressed: () {},
                child: Text("button1"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
