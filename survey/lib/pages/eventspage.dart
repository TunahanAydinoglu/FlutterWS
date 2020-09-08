import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Yaklasan Etkinlikler"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.account_box),
          ),
        ],
      ),
      body: Container(
        color: Color(0xff056676),
        height: mySize.height,
        width: mySize.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfff1f3f8),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ]),
                width: mySize.width,
                height: mySize.height * 0.14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://cdn3.iconfinder.com/data/icons/web-and-seo-45/64/47-512.png",
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Odev : "),
                        Text("Matematik Unite 7 Sorulari"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: mySize.height * 0.8 * 0.14,
                          width: 3,
                          child: Container(
                            color: Color(0xff333333),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "17",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "Sep",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
