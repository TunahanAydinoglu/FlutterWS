import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  bool answer1 = false;
  bool answer2 = false;
  bool answer3 = false;
  bool answer4 = true;
  bool answer5 = false;
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: mySize.width * 0.8,
          height: mySize.height * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfff1f3f8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.grey,
                  offset: Offset(0, 0),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  topTexts(mySize),
                  SizedBox(
                    height: 20,
                  ),
                  answerBox(answer1, "Store locator"),
                  answerBox(answer2, "AR fitting room"),
                  answerBox(answer3, "Favourites tab"),
                  answerBox(answer4, "Support chat"),
                  answerBox(answer5, "Re-order the basket"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: mySize.width * 0.75,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient:
                          LinearGradient(colors: [Colors.green, Colors.yellow]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SUBMIT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding answerBox(bool answer, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Row(
          children: [
            // Checkbox(
            //     value: answer,
            //     activeColor: Colors.green,
            //     onChanged: (bool newAnswer) {
            //       setState(() {
            //         answer = newAnswer;
            //       });
            //     }),
            CircularCheckBox(
                value: answer,
                activeColor: Colors.green,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                onChanged: (bool x) {
                  setState(() {
                    answer = !answer;
                  });
                }),
            Text(text),
          ],
        ),
      ),
    );
  }

  Column topTexts(Size mySize) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                FontAwesomeIcons.times,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there, a quick question for you",
              style: TextStyle(
                fontFamily: "Raleway",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 5),
            Container(
              constraints: BoxConstraints(maxWidth: mySize.width * 0.65),
              child: Text(
                "What features would you like to see in the upcoming updates?",
                style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
