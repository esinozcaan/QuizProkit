import 'dart:convert';

class Quizscoresmode {
  const Quizscoresmode({
    required this.title,
    this.scores,
    required this.totalquiz,
    required this.img,
    required this.id,
  });

  factory Quizscoresmode.fromMap(Map<String, dynamic> map) {
    return Quizscoresmode(
      title: map['title'],
      scores: map['scores']?.toInt(),
      totalquiz: map['totalquiz'],
      img: map['img'],
      id: map['id'].toInt(),
    );
  }

  factory Quizscoresmode.fromJson(String source) => Quizscoresmode.fromMap(json.decode(source));

  final String title;

  final int? scores;

  final String totalquiz;

  final String img;

  final int id;

  Quizscoresmode copyWith({
    String? title,
    int? scores,
    String? totalquiz,
    String? img,
    int? id,
  }) {
    return Quizscoresmode(
      title: title ?? this.title,
      scores: scores ?? this.scores,
      totalquiz: totalquiz ?? this.totalquiz,
      img: img ?? this.img,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'scores': scores,
      'totalquiz': totalquiz,
      'img': img,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quizscoresmode &&
        other.title == title &&
        other.scores == scores &&
        other.totalquiz == totalquiz &&
        other.img == img &&
        other.id == id;
  }

  @override
  int get hashCode {
    return title.hashCode ^ scores.hashCode ^ totalquiz.hashCode ^ img.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Quizscoresmode(title: $title, scores: $scores, totalquiz: $totalquiz, img: $img, id: $id)';
  }
}
