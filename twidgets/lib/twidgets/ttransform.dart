import 'package:flutter/material.dart';

class TTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TransForm Deneme")),
      ),
      body: Column(
        children: [
          Transform(
            transform: Matrix4.skewX(0.4),
            child: threeButtons(),
          ),
          Transform(
            transform: Matrix4.skewY(0.1),
            child: threeButtons(),
          ),
          SizedBox(
            height: 60,
          ),
          Transform(
            transform: Matrix4.skew(0.2, 0.1),
            child: threeButtons(),
          ),
        ],
      ),
    );
  }

  Container threeButtons() {
    return Container(
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
    );
  }
}
