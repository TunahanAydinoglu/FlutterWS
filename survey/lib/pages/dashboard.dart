import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:survey/pages/surveydetail.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.green,
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Anketler",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.asset(
                  "assets/images/survey.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      leading:
                          Icon(FontAwesomeIcons.solidStar, color: Colors.blue),
                      title: Text("Anket Basligi"),
                      subtitle: Text("Anket Detayi"),
                    ),
                    ButtonBar(
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SurveyDetailPage(),
                              ),
                            );
                          },
                          child: Text("Ankete Katil"),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            shrinkWrap: true,
            itemCount: 5,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
