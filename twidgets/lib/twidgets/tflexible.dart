import 'package:flutter/material.dart';

class TFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flexible Deneme")),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: RaisedButton(
                child: Text("New Button"),
                onPressed: () {},
              ),
            ),
            Flexible(fit: FlexFit.tight, flex: 1, child: SizedBox()),
            Flexible(
              fit: FlexFit.tight,
              flex: 10,
              child: RaisedButton(
                color: Colors.blue,
                child: Text("New Button"),
                onPressed: () {},
              ),
            ),
            Flexible(fit: FlexFit.tight, flex: 10, child: SizedBox()),
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: RaisedButton(
                child: Text("New Button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
