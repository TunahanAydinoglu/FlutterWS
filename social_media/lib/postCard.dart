import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.indigo,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2019/09/05/23/07/portrait-4455187_960_720.jpg"),
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name Surname",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "1 hour ago",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Image Description",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Image.network(
                "https://cdn.pixabay.com/photo/2019/09/05/23/07/portrait-4455187_960_720.jpg",
                width: double.infinity,
                height: 210,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  PostButton(
                    icon: Icons.favorite,
                    text: "Like",
                    function: () {
                      print("Liked");
                    },
                  ),
                  PostButton(
                      icon: Icons.comment,
                      text: "Comments",
                      function: () {
                        print("Comments");
                      }),
                  PostButton(
                      icon: Icons.share,
                      text: "Share",
                      function: () {
                        print("Shared");
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final function;

  PostButton({this.icon, this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: function,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
