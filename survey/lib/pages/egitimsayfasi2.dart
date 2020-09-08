import 'package:flutter/material.dart';

class EgitimSayfasi2 extends StatefulWidget {
  @override
  _EgitimSayfasi2State createState() => _EgitimSayfasi2State();
}

class _EgitimSayfasi2State extends State<EgitimSayfasi2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Yaklaşan Etkinlikler"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.alarm),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
              child: Container(
          width: size.width,
          color: Color(0xff056676),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width * 0.85,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top:10,),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                            color: Color(0xfff1f3f8),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.5),
                              )
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.network(
                                  "https://cdn3.iconfinder.com/data/icons/web-and-seo-45/64/47-512.png",
                                  height: 50,
                                ),
                                SizedBox(width: 15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Ödev:",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Text("Matematik; Ünite 7 Soruları")
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 2,
                                  height: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "17",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "EYL",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
