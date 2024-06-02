import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/Screens/QuizResult.dart';
import 'package:quiz_prokit/main.dart';
import 'package:quiz_prokit/model/QuizModels.dart';
import 'package:quiz_prokit/utils/AppWidget.dart';
import 'package:quiz_prokit/utils/QuizColors.dart';
import 'package:quiz_prokit/utils/QuizConstant.dart';

class QuizCards extends StatefulWidget {
  static String tag = '/QuizCards';

  @override
  _QuizCardsState createState() => _QuizCardsState();
}

class _QuizCardsState extends State<QuizCards> {
  List<Widget> cardList = [];

  void removeCards(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    cardList = _generateCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              child: Stack(alignment: Alignment.center, children: cardList),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      finish(context);
                    },
                    icon: Icon(Icons.close, color: quiz_colorPrimary),
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: textSecondaryColor.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        quiz_green,
                      ),
                    ).paddingAll(16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _generateCards() {
    List<Quiz> planetCard = [];
    planetCard.add(
      Quiz(
          cardimage: "How many basic steps are there in scientific method?",
          option1: "Eight Steps",
          option2: "Ten Steps",
          option3: "Two Steps",
          option4: "One Steps",
          topmargin: 70.0),
    );
    planetCard.add(
      Quiz(
          cardimage: "Which blood vessels have the smallest diameter? ",
          option1: "Capillaries",
          option2: "Arterioles",
          option3: "Venules",
          option4: "Lymphatic",
          topmargin: 80.0),
    );
    planetCard.add(Quiz(
        cardimage: "The substrate of photo-respiration is",
        option1: "Phruvic acid",
        option2: "Glucose",
        option3: "Fructose",
        option4: "Glycolate",
        topmargin: 20.0));

    planetCard.add(Quiz(
        cardimage: "Which one of these animal is jawless?",
        option1: "Shark",
        option2: "Myxine",
        option3: "Trygon",
        option4: "Sphyrna",
        topmargin: 100.0));
    planetCard.add(
      Quiz(
          cardimage: "How many basic steps are there in scientific method?",
          option1: "Eight Steps",
          option2: "Ten Steps",
          option3: "One Steps",
          option4: "Three Steps",
          topmargin: 110.0),
    );
    List<Widget> cardList = [];

    for (int x = 0; x < 5; x++) {
      cardList.add(
        Positioned(
          top: planetCard[x].topmargin,
          child: Draggable(
            onDragEnd: (drag) {
              if (x == 0) {
                setState(() {
                  QuizResult().launch(context);
                });
              }
              removeCards(x);
            },
            childWhenDragging: Container(),
            feedback: Material(
              child: GestureDetector(
                child: Container(
                  decoration: boxDecoration(
                      radius: 20, bgColor: quiz_white, showShadow: true),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        width: 320.0,
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                          child: text(planetCard[x].cardimage,
                              fontSize: textSizeLarge,
                              fontFamily: fontBold,
                              isLongText: true),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: <Widget>[
                              quizCardSelection("A.", planetCard[x].option1,
                                  () {
                                removeCards(x);
                              }),
                              quizCardSelection("B.", planetCard[x].option2,
                                  () {
                                removeCards(x);
                              }),
                              quizCardSelection("C.", planetCard[x].option3,
                                  () {
                                removeCards(x);
                              }),
                              quizCardSelection("D.", planetCard[x].option4,
                                  () {
                                removeCards(x);
                              }),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            child: GestureDetector(
              child: Container(
                decoration: boxDecoration(
                    radius: 20,
                    bgColor: appStore.isDarkModeOn ? cardDarkColor : white,
                    showShadow: true),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 200.0,
                        width: 320.0,
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                          child: text(planetCard[x].cardimage,
                              fontSize: textSizeLarge,
                              fontFamily: fontBold,
                              isLongText: true),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Column(
                        children: <Widget>[
                          quizCardSelection("A.", planetCard[x].option1, () {
                            removeCards(x);
                          }),
                          quizCardSelection("B.", planetCard[x].option2, () {
                            removeCards(x);
                          }),
                          quizCardSelection("C.", planetCard[x].option3, () {
                            removeCards(x);
                          }),
                          quizCardSelection(
                            "D.",
                            planetCard[x].option4,
                            () {
                              removeCards(x);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return cardList;
  }
}

Widget quizCardSelection(var option, var option1, onPressed) {
  return InkWell(
    onTap: () {
      onPressed();
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: boxDecoration(
        showShadow: false,
        bgColor: appStore.isDarkModeOn ? cardDarkColor : quiz_edit_background,
        radius: 10,
        color: quiz_view_color,
      ),
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      width: 320,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: text(option1, textColor: quiz_textColorSecondary),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: text(option, textColor: quiz_textColorSecondary),
          )
        ],
      ),
    ),
  );
}