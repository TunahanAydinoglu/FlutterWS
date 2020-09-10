import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpHelloView extends StatefulWidget {
  @override
  _HttpHelloViewState createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CircularProgressIndicator(),
            RaisedButton(
              onPressed: () {},
              child: Text("Send Request"),
            )
          ],
        ),
      ),
    );
  }
}
