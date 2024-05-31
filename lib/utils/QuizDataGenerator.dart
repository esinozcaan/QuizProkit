import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/modelgen/newquizmodel.g.dart';
import 'package:quiz_prokit/modelgen/quizbadgesmodel.g.dart';
import 'package:quiz_prokit/modelgen/quizcontactusmodel.g.dart';
import 'package:quiz_prokit/modelgen/quizscoresmode.g.dart';
import 'package:quiz_prokit/modelgen/quiztestmode.g.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<Newquizmodel>> getQuizData() async {
  // List<NewQuizModel> list = [];

  final supabase = Supabase.instance.client;

  final response = await supabase.from('newquizmodel').select();

  // List<Accountmodel> accountmodel =
  //     response.map((row) => Accountmodel.fromMap(row.toColumnMap())).toList();

  final List<Newquizmodel> tableModel =
      response.map((item) => Newquizmodel.fromMap(item)).toList();

  return tableModel;
/*
  NewQuizModel model1 = NewQuizModel();
  model1.quizName = "Biology & The \nScientific Method";
  model1.totalQuiz = "15 Quiz";
  model1.quizImage = quiz_ic_study1;

  NewQuizModel model2 = NewQuizModel();
  model2.quizName = "Geography Basics \nMethods";
  model2.totalQuiz = "5 Quiz";
  model2.quizImage = quiz_ic_study2;

  NewQuizModel model3 = NewQuizModel();
  model3.quizName = "Java Basics \nOOPs Concept";
  model3.totalQuiz = "10 Quiz";
  model3.quizImage = quiz_ic_course3;

  NewQuizModel model4 = NewQuizModel();
  model4.quizName = "Art and \nPainting Basic";
  model4.totalQuiz = "10 Quiz";
  model4.quizImage = quiz_ic_course1;

  NewQuizModel model5 = NewQuizModel();
  model5.quizName = "Communication Basic";
  model5.totalQuiz = "10 Quiz";
  model5.quizImage = quiz_ic_communication;

  NewQuizModel model6 = NewQuizModel();
  model6.quizName = "Investment and \nTypes";
  model6.totalQuiz = "10 Quiz";
  model6.quizImage = quiz_ic_course2;

  list.add(model1);
  list.add(model3);
  list.add(model6);
  list.add(model4);
  list.add(model5);
  list.add(model2);

  return list;
*/
}

Future<List<Quiztestmode>> quizGetData() async {
 
  final supabase = Supabase.instance.client;

  final response = await supabase.from('quiztestmode').select();

  final List<Quiztestmode> tableModel =
      response.map((item) => Quiztestmode.fromMap(item)).toList();

  return tableModel;
/*
List<Quiztestmode> quizGetData() {
  List<Quiztestmode> list = [];
  
  Quiztestmode model1 = Quiztestmode();
  model1.heading = "The Scientific Method";
  model1.image = quiz_ic_quiz1;
  model1.type = "Quiz 1";
  model1.description = "Let's put your memory on our first topic to test.";
  model1.status = "true";

  QuizTestModel model2 = QuizTestModel();
  model2.heading = "Introduction to Biology";
  model2.image = quiz_ic_quiz2;
  model2.type = "Flashcards";
  model2.description = "Complete the above test to unlock this one.";
  model2.status = "false";

  QuizTestModel model3 = QuizTestModel();
  model3.heading = "Controlled Experiments";
  model3.image = quiz_ic_quiz1;
  model3.type = "Quiz 2";
  model3.description = "Let's put your memory on our first topic to test.";
  model3.status = "false";

  list.add(model1);
  list.add(model2);
  list.add(model3);

  return list;
  */
}
Future<List<Quizbadgesmodel>> quizBadgesData() async {
 
  final supabase = Supabase.instance.client;

  final response = await supabase.from('quizbadgesmodel').select();

  final List<Quizbadgesmodel> tableModel =
      response.map((item) => Quizbadgesmodel.fromMap(item)).toList();

  return tableModel; 



/*List<Quizbadgesmodel> quizBadgesData() {
  List<Quizbadgesmodel> list = [];
  Quizbadgesmodel model1 = Quizbadgesmodel();
  model1.title = "Achiever";
  model1.subtitle = "Complete an exercise";
  model1.img = quiz_ic_list2;

  Quizbadgesmodel model2 = Quizbadgesmodel();
  model2.title = "Perectionistf";
  model2.subtitle = "Finish All lesson of chapter";
  model2.img = quiz_ic_list5;

  Quizbadgesmodel model3 = Quizbadgesmodel();
  model3.title = "Scholar";
  model3.subtitle = "Study two Cources";
  model3.img = quiz_ic_list3;

  Quizbadgesmodel model4 = Quizbadgesmodel();
  model4.title = "Champion";
  model4.subtitle = "Finish #1 in Scoreboard";
  model4.img = quiz_ic_list4;

  Quizbadgesmodel model5 = Quizbadgesmodel();
  model5.title = "Focused";
  model5.subtitle = "Study every day for 30 days";
  model5.img = quiz_ic_list5;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);

  return list;*/
}
Future<List<Quizscoresmode>> quizScoresData() async {
 
  final supabase = Supabase.instance.client;

  final response = await supabase.from('quizscoresmode').select();

  final List<Quizscoresmode> tableModel =
      response.map((item) => Quizscoresmode.fromMap(item)).toList();

  return tableModel; 
/*
List<Quizscoremode> quizScoresData() { 
  List<Quizscoremode> list = [];
  Quizscoremode model1 = Quizscoremode();
  model1.title = "Biology Basics";
  model1.totalQuiz = "20 Quiz";
  model1.img = quiz_ic_course1;
  model1.scores = "30/50";

  Quizscoremode model2 = Quizscoremode();
  model2.title = "Java Basics";
  model2.totalQuiz = "30 Quiz";
  model2.img = quiz_ic_course2;
  model2.scores = "30/50";

 Quizscoremode model3 = Quizscoremode();
  model3.title = "Art & Painting Basics";
  model3.totalQuiz = "10 Quiz";
  model3.img = quiz_ic_course3;
  model3.scores = "10/50";

  list.add(model1);
  list.add(model2);
  list.add(model3);

  return list; */
}
Future<List<Quizcontactusmodel>> quizContactUsData() async {
 
  final supabase = Supabase.instance.client;

  final response = await supabase.from('quizcontactusmodel').select();

  final List<Quizcontactusmodel> tableModel =
      response.map((item) => Quizcontactusmodel.fromMap(item)).toList();

  return tableModel; 

/* List<QuizContactUsModel> quizContactUsData() {
  List<QuizContactUsModel> list = [];
  QuizContactUsModel model1 = QuizContactUsModel();
  model1.title = "Call Request";
  model1.subtitle = "+00 356 646 234";

  QuizContactUsModel model2 = QuizContactUsModel();
  model2.title = "Email";
  model2.subtitle = "Response within 24 business hours";

  list.add(model1);
  list.add(model2);

  return list; */
}

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(
        id: 1,
        name: 'English',
        languageCode: 'en',
        fullLanguageCode: 'en-US',
        flag: 'images/flag/ic_us.png'),
    LanguageDataModel(
        id: 2,
        name: 'Hindi',
        languageCode: 'hi',
        fullLanguageCode: 'hi-IN',
        flag: 'images/flag/ic_hi.png'),
    LanguageDataModel(
        id: 3,
        name: 'Arabic',
        languageCode: 'ar',
        fullLanguageCode: 'ar-AR',
        flag: 'images/flag/ic_ar.png'),
    LanguageDataModel(
        id: 4,
        name: 'French',
        languageCode: 'fr',
        fullLanguageCode: 'fr-FR',
        flag: 'images/flag/ic_fr.png'),
  ];
}
