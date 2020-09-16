import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: myAppBar(),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Container(
              height: mySize.height * 0.9 - 20,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return myCard(mySize);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container myCard(Size mySize) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
      height: mySize.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.access_alarms,
            size: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Odev : "),
              SizedBox(
                height: 10,
              ),
              Text("Matematik unite 7 Sorulari"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 3,
                height: 45,
                child: Container(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("17"),
                  Text("EYL"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blueGrey,
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
