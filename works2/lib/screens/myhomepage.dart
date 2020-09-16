import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: myAppBar(),
        body: Container(
          height: mySize.height,
          width: mySize.width,
          color: Colors.blueGrey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.accessible_forward,
                      size: 60,
                    ),
                    Column(
                      children: [
                        Text("Odev:"),
                        Text("Matematik Unite 7 Sorulari"),
                      ],
                    ),
                    SizedBox(
                      width: 3,
                      height: 70,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text("16"),
                        Text("EYL"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  AppBar myAppBar() {
    return AppBar(
      title: Center(
        child: Text("My Home Page"),
      ),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.access_alarms),
      ],
    );
  }
}
