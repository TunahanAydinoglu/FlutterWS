import 'package:flutter/material.dart';
import 'package:social_media/widgets/postCard.dart';
import 'homePage.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize.height * 0.32,
                  // color: Colors.yellow,
                ),
                Container(
                  height: screenSize.height * 0.24,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(user.image), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Hero(
                    tag: user.image,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.lightBlue,
                        image: DecorationImage(
                            image: NetworkImage(user.image), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name + " " + user.surname,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        user.name,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 65,
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context, true);
                    })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  userCounter("13K", "Followers"),
                  userCounter("337", "Follows"),
                  userCounter("24", "Posts"),
                ],
              ),
            ),
            PostCard(
              name: user.name,
              surname: user.surname,
              timer: "1 hour ago",
              description: user.description,
              postImageUrl: user.image,
              profileImageUrl: user.image,
            ),
          ],
        ));
  }

  Column userCounter(String counter, String counterName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          counter,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          counterName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
