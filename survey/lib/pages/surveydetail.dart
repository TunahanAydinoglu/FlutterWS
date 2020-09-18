import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:survey/screens/surveypage.dart';

class SurveyDetailPage extends StatefulWidget {
  @override
  _SurveyDetailPageState createState() => _SurveyDetailPageState();
}

class _SurveyDetailPageState extends State<SurveyDetailPage> {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.green,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  "https://media.backlinks.name//contents//backlink-yazilimdilleri-2019-01-06-08-27-47.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        "En Populer Programlama Dilleri",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: mySize.width * 0.85),
                      child: Text(
                        "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Icon(
                  FontAwesomeIcons.star,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SurveyPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.play,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Basla",
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Paylas"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: mySize.width * 0.85,
                  height: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
