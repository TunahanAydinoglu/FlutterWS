import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHelloView extends StatefulWidget {
  @override
  _HttpHelloViewState createState() => _HttpHelloViewState();
}

class _HttpHelloViewState extends State<HttpHelloView> {
  // bool isHaveData;
  // String data;
  @override
  void initState() {
    super.initState();
    // isHaveData = true;
    // data = "";
  }

  Future getApiJohnName() async {
    return (await http
            .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
        .body;
    // var data = (await http
    //         .get("https://hwasampleapi.firebaseio.com/api/books/0/author.json"))
    //     .body;
    // data = json.decode(data);
    // setState(() {
    //   isHaveData = !isHaveData;
    //   this.data = data;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Http")),
      ),
      body: Center(
        // child: await gereksizHali(),
        child: FutureBuilder(
            future: getApiJohnName(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Text(json.decode(snapshot.data));
                } else {
                  return Text("You have Error. look at api!");
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return Text("You have Error. Are you sure api ?");
              }
            }),
      ),
    );
  }

//   Future<Column> gereksizHali() async {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         isHaveData ? CircularProgressIndicator() : Text(this.data),
//         RaisedButton(
//           onPressed: () async {
//             await getApiJohnName();
//           },
//           child: Text("Send Request"),
//         )
//       ],
//     );
//   }
// }
}
