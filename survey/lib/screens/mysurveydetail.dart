import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slider_button/slider_button.dart';
import 'package:survey/screens/surveypage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MySurveyDetail extends StatefulWidget {
  @override
  _MySurveyDetailState createState() => _MySurveyDetailState();
}

class _MySurveyDetailState extends State<MySurveyDetail> {
  int _selectedIndex = 1;
  String lorem =
      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.";
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xffFF8C00),
        height: mySize.height,
        width: mySize.width,
        child: Stack(
          children: [
            topImage(mySize),
            Positioned(
              top: mySize.height * 0.39,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: Colors.white,
                ),
                width: mySize.width,
                height: mySize.height * 0.61,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 15, top: 55),
                  child: Column(
                    children: [
                      Text(
                        "Anket Aciklamasi :",
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToLastDescent: true),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        lorem + lorem,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            surveyCard(mySize),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.grey[800],
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.star,
                    text: 'My Surveys',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }

  Positioned surveyCard(Size mySize) {
    return Positioned(
      left: 30,
      right: 30,
      top: mySize.height * 0.22,
      child: Container(
        height: mySize.height * 0.23,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, top: 15, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "2020 Yili en cok kullanilan programlama dilleri",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Anket Sahibi",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                buttons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container topImage(Size mySize) {
    return Container(
      width: mySize.width,
      height: mySize.height * 0.25,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        child: Image.asset(
          "assets/images/survey.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SliderButton(
          width: 160,
          height: 41.99,
          buttonSize: 30,
          action: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurveyPage(),
              ),
            );
          },
          label: Text(
            "Ankete Katil",
            style: TextStyle(
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          icon: Icon(FontAwesomeIcons.arrowCircleRight),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffe0e0e0),
          ),
          child: Icon(
            Icons.share,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }

  NestedScrollView buildNestedScrollView() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  "assets/images/survey.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ];
      },
      body: SizedBox(),
    );
  }
}
