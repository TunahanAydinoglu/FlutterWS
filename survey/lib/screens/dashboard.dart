import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    if (SurveyService.surveyItems.length == 0) {
      SurveyService.getAll();
      print(SurveyService.surveyItems.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;

    var myIcons = [
      Icon(
        Icons.fitness_center,
        size: 30,
        color: Colors.blue,
      ),
      Icon(
        FontAwesomeIcons.heart,
        size: 30,
        color: Colors.red,
      ),
      Icon(
        Icons.phone_android,
        size: 30,
        color: Colors.green,
      ),
      Icon(
        Icons.computer,
        size: 30,
        color: Colors.blueGrey,
      ),
      Icon(
        FontAwesomeIcons.youtube,
        size: 30,
        color: Colors.red,
      ),
      Icon(
        FontAwesomeIcons.twitter,
        size: 30,
        color: Colors.blue,
      ),
      Icon(
        FontAwesomeIcons.facebook,
        size: 30,
        color: Colors.blue,
      ),
    ];
    return Scaffold(
      appBar: myAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: sliverAppBar,
        body: Container(
          color: Colors.blue,
          width: mySize.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              categoryIcons(myIcons),
              SizedBox(
                height: 10,
              ),
              Container(
                width: mySize.width,
                child: ListView.builder(
                  itemCount: SurveyService.surveyItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(bottom: 8, right: 10, left: 10),
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      elevation: 15,
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            SurveyService.surveyItems[index].durum =
                                !SurveyService.surveyItems[index].durum;
                          });
                        },
                        leading: SurveyService.surveyItems[index].categoryIcon,
                        title: Center(
                          child: Text(
                            SurveyService.surveyItems[index].title,
                          ),
                        ),
                        subtitle: (SurveyService.surveyItems[index].durum ==
                                true)
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6),
                                    child: Text(
                                      SurveyService
                                          .surveyItems[index].description,
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  RaisedButton(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child:
                                        Text("Anket detayi icin tiklayiniz."),
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            : null,
                        trailing: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.keyboard_arrow_down),
                              onPressed: () {
                                setState(() {
                                  SurveyService.surveyItems[index].durum =
                                      !SurveyService.surveyItems[index].durum;
                                });
                              },
                            ),
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

  Container categoryIcons(List<Icon> myIcons) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myIcons.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 80,
                child: RaisedButton.icon(
                  padding: EdgeInsets.only(left: 5),
                  shape: CircleBorder(),
                  onPressed: () {
                    print(myIcons[index].icon);
                  },
                  icon: myIcons[index],
                  label: Text(""),
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> sliverAppBar(context, innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        backgroundColor: Colors.blue,
        pinned: false,
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          background: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Image.asset(
              "assets/images/survey.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ];
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      leading: Icon(FontAwesomeIcons.home),
      title: Text(
        "Anketler",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SurveyItem {
  int id;
  String title;
  String description;
  Icon categoryIcon;
  bool durum;

  SurveyItem(
      this.id, this.title, this.description, this.categoryIcon, this.durum);
}

class SurveyService {
  static var myIcons = [
    Icon(
      Icons.fitness_center,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      FontAwesomeIcons.heart,
      size: 30,
      color: Colors.red,
    ),
    Icon(
      Icons.phone_android,
      size: 30,
      color: Colors.green,
    ),
    Icon(
      Icons.computer,
      size: 30,
      color: Colors.blueGrey,
    ),
    Icon(
      FontAwesomeIcons.youtube,
      size: 30,
      color: Colors.red,
    ),
    Icon(
      FontAwesomeIcons.twitter,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      FontAwesomeIcons.facebook,
      size: 30,
      color: Colors.blue,
    ),
  ];

  static List<SurveyItem> surveyItems = new List<SurveyItem>();

  static List<SurveyItem> getAll() {
    surveyItems.add(new SurveyItem(
        1,
        "2020 En Sevilen Android Telefon",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[3],
        false));
    surveyItems.add(new SurveyItem(
        2,
        "2020 En Sevilen Youtube Kanali",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[4],
        false));
    surveyItems.add(new SurveyItem(
        3,
        "2020 En Sevilen Bilgisayari",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[3],
        false));
    surveyItems.add(new SurveyItem(
        4,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        5,
        "2020 En Sevilen Twitter sayfasi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[5],
        false));
    surveyItems.add(new SurveyItem(
        6,
        "2020 En Sevilen Facebook Grubu",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[6],
        false));
    surveyItems.add(new SurveyItem(
        7,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        8,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        9,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        10,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        11,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        12,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        13,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        14,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));
    surveyItems.add(new SurveyItem(
        15,
        "2020 En Sevilen Hastanesi",
        "2020 yilinda en cok satin alinan telefonlar arasindan kullanicilar tarafindan en cok memnuniyet oyu alacak telefonu ariyoruz.",
        myIcons[1],
        false));

    return surveyItems;
  }
}
