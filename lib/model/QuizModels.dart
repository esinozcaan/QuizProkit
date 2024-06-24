/*class NewQuizModel {
  var quizName = "";
  var totalQuiz = "";
  var quizImage = "";
}

class QuizTestModel {
  var heading = "";
  var image = "";
  var description = "";
  var type = "";
  var status = "";
}

class QuizRecentSearchDataModel {
  var name = "";
}

class QuizBadgesModel {
  var title = "";
  var subtitle = "";
  var img = "";
}

class QuizScoresModel {
  var title = "";
  var totalQuiz = "";
  var img = "";
  var scores = "";
}

class QuizContactUsModel {
  var title = "";
  var subtitle = "";
}
*/

import 'dart:ffi';
import 'dart:js_util';

class NewQuizModel2 {
  int? id;
  String? quizImage;
  String? quizName;
  String? totalQuiz;

  NewQuizModel2({this.id, this.quizImage, this.quizName, this.totalQuiz});

  NewQuizModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quizImage = json['quizimage'];
    quizName = json['quizname'];
    totalQuiz = json['totalquiz'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quizimage'] = this.quizImage;
    data['quizname'] = this.quizName;
    data['totalquiz'] = this.totalQuiz;
    return data;
  }
}

class QuizTestModel2 {
  int? id;
  String? heading;
  String? image;
  String? description;
  String? type;
  bool? status;

  QuizTestModel2(
      {this.id,
      this.heading,
      this.image,
      this.description,
      this.type,
      this.status});

  QuizTestModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    heading = json['heading'];
    image = json['image'];
    description = json['description'];
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['heading'] = this.heading;
    data['image'] = this.image;
    data['description'] = this.description;
    data['type'] = this.type;
    data['status'] = this.status;
    return data;
  }
}

class QuizRecentSearchDataModel2 {
  int? id;
  String? name;

  QuizRecentSearchDataModel2({this.id, this.name});

  QuizRecentSearchDataModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class QuizBadgesModel2 {
  int? id;
  String? title;
  String? subtitle;
  String? img;

  QuizBadgesModel2({this.id, this.title, this.subtitle, this.img});

  QuizBadgesModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['img'] = this.img;
    return data;
  }
}

class QuizScoresModel2 {
  int? id;
  String? title;
  String? totalquiz;
  String? img;
  String? scores;

  QuizScoresModel2(
      {this.id, this.title, this.totalquiz, this.img, this.scores});

  QuizScoresModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    totalquiz = json['subtitle'];
    img = json['img'];
    scores = json['scores'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['totalquiz'] = this.totalquiz;
    data['img'] = this.img;
    data['scores'] = this.scores;
    return data;
  }
}

class QuizContactUsModel2 {
  int? id;
  String? title;
  String? subtitle;

  QuizContactUsModel2({this.id, this.title, this.subtitle});

  QuizContactUsModel2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    return data;
  }
}

class User2 {
  int? id;
  String? name;
  String? score;

  User2({this.id, this.name, this.score});

  User2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    score = json['score'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['score'] = this.score;
    return data;
  }
}

class Quiz {
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  String? cardimage;
  double? topmargin;

  Quiz(
      {this.cardimage,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.topmargin});

  Quiz.fromJson(Map<String, dynamic> json) {
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    cardimage = json['cardimage'];
    topmargin = json['topmargin'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['cardimage'] = this.cardimage;
    data['topmargin'] = this.topmargin;
    return data;
  }
}

