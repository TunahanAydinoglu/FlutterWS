import 'package:flutter/material.dart';
import 'package:social_media/postCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey,
            iconSize: 32.0,
            onPressed: () => {}),
        title: Text(
          "Social Media",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.purple,
            iconSize: 32.0,
            onPressed: () => {},
          ),
        ],
      ),
      body: ListView(
        children: [
          StoryBoard(),
          SizedBox(
            height: 10,
          ),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
        ],
      ),
    );
  }
}

class StoryBoard extends StatelessWidget {
  const StoryBoard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(5, 7), blurRadius: 9)
        ],
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          profileCard(user1.name, user1.image),
          profileCard(user2.name, user2.image),
          profileCard(user3.name, user3.image),
          profileCard(user4.name, user4.image),
          profileCard(user5.name, user5.image),
          profileCard(user6.name, user6.image),
          profileCard(user7.name, user7.image),
        ],
      ),
    );
  }
}

Widget profileCard(String userName, String profileImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, right: 8),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2.0, color: Colors.grey),
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(profileImageUrl)),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          userName,
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ),
      ],
    ),
  );
}

class User {
  String name;
  String image;

  User(this.name, this.image);
}

User user1 = User("Sabrina",
    "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_960_720.jpg");
User user2 = User("James",
    "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg");
User user3 = User("Katie",
    "https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707_960_720.jpg");
User user4 = User("David",
    "https://cdn.pixabay.com/photo/2016/09/05/14/29/reinhold-messner-1646687_960_720.jpg");
User user5 = User("Miley",
    "https://cdn.pixabay.com/photo/2017/07/07/12/41/beauty-2481372_960_720.jpg");
User user6 = User("Victoria",
    "https://cdn.pixabay.com/photo/2019/09/05/23/07/portrait-4455187_960_720.jpg");
User user7 = User("Jack",
    "https://cdn.pixabay.com/photo/2020/10/26/18/20/man-5688155_960_720.jpg");
