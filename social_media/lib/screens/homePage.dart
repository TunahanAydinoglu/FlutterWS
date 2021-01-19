import 'package:flutter/material.dart';
import 'package:social_media/screens/profilePage.dart';
import 'package:social_media/widgets/postCard.dart';

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
            color: Colors.grey,
            iconSize: 32.0,
            onPressed: () => {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Miley followed you.",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text("3 minutes later")
                          ],
                        ),
                      )
                    ],
                  );
                },
              )
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          StoryBoard(),
          SizedBox(
            height: 10,
          ),
          PostCard(
            name: user1.name,
            surname: user1.surname,
            timer: "1 hour ago",
            description: user1.description,
            postImageUrl: user1.image,
            profileImageUrl: user1.image,
          ),
          PostCard(
            name: user2.name,
            surname: user2.surname,
            timer: "1 hour ago",
            description: user2.description,
            postImageUrl: user2.image,
            profileImageUrl: user2.image,
          ),
          PostCard(
            name: user3.name,
            surname: user3.surname,
            timer: "1 hour ago",
            description: user3.description,
            postImageUrl: user3.image,
            profileImageUrl: user3.image,
          ),
          PostCard(
            name: user4.name,
            surname: user4.surname,
            timer: "1 hour ago",
            description: user4.description,
            postImageUrl: user4.image,
            profileImageUrl: user4.image,
          ),
          PostCard(
            name: user5.name,
            surname: user5.surname,
            timer: "1 hour ago",
            description: user5.description,
            postImageUrl: user5.image,
            profileImageUrl: user5.image,
          ),
          PostCard(
            name: user6.name,
            surname: user6.surname,
            timer: "1 hour ago",
            description: user6.description,
            postImageUrl: user6.image,
            profileImageUrl: user6.image,
          ),
          PostCard(
            name: user7.name,
            surname: user7.surname,
            timer: "1 hour ago",
            description: user7.description,
            postImageUrl: user7.image,
            profileImageUrl: user7.image,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[300],
        onPressed: null,
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
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
          profileCard(user1, context),
          profileCard(user2, context),
          profileCard(user3, context),
          profileCard(user4, context),
          profileCard(user5, context),
          profileCard(user6, context),
          profileCard(user7, context),
        ],
      ),
    );
  }
}

Widget profileCard(User user, BuildContext context) {
  return Material(
    child: InkWell(
      onTap: () async {
        bool backData = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => ProfilePage(
              user: user,
            ),
          ),
        );
        print(backData);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Hero(
                  tag: user.image,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(user.image)),
                    ),
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
              user.name,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}

class User {
  String name;
  String surname;
  String description;
  String image;

  User(this.name, this.surname, this.description, this.image);
}

User user1 = User("Sabrina", "Ulrich", "Sabrina Description",
    "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_960_720.jpg");
User user2 = User("James", "Hetfield", "James Description",
    "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg");
User user3 = User("Katie", "Trujillo", "Katie Description",
    "https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707_960_720.jpg");
User user4 = User("David", "Franklyn", "Description",
    "https://cdn.pixabay.com/photo/2016/09/05/14/29/reinhold-messner-1646687_960_720.jpg");
User user5 = User("Miley", "Ronson", "Miley Description",
    "https://cdn.pixabay.com/photo/2017/07/07/12/41/beauty-2481372_960_720.jpg");
User user6 = User("Victoria", "Christ", " Victoria Description",
    "https://cdn.pixabay.com/photo/2019/09/05/23/07/portrait-4455187_960_720.jpg");
User user7 = User("Jack", "Sparrow", "Jack Description",
    "https://cdn.pixabay.com/photo/2019/08/06/08/18/man-4387682_960_720.jpg");
