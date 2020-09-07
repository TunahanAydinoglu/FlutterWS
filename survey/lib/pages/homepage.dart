import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "+",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      appBar: AppBar(
        title: Text("Cekilis Uygulamasi Test"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white.withOpacity(0.1),
              alignment: Alignment.center,
              height: mySize.height * 0.3,
              width: mySize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      "https://cdn1.ntv.com.tr/gorsel/K1bKKPjpIEiaGlX9HxdO2Q.jpg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Margot Robbie",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Mobil Ekip",
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              height: mySize.height * 0.24,
              width: mySize.width,
              color: Colors.white.withOpacity(0.1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png",
                      height: 50,
                    ),
                  ),
                  Container(
                    width: mySize.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Batman",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " @superkahraman",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " - 1h",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        Text(
                          "Lorem Ipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır.",
                          style: TextStyle(
                              height: 1.3,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.rotate_90_degrees_ccw,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(color: Colors.pink),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: mySize.height * 0.15,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
