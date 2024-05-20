import 'dart:convert';

class Newquizmodel {
  const Newquizmodel({
    required this.quizimage,
    this.totalquiz,
    required this.id,
    required this.quizname,
  });

  factory Newquizmodel.fromMap(Map<String, dynamic> map) {
    return Newquizmodel(
      quizimage: map['quizimage'],
      totalquiz: map['totalquiz']?.toInt(),
      id: map['id'].toInt(),
      quizname: map['quizname'],
    );
  }

  factory Newquizmodel.fromJson(String source) => Newquizmodel.fromMap(json.decode(source));

  final String quizimage;

  final int? totalquiz;

  final int id;

  final String quizname;

  Newquizmodel copyWith({
    String? quizimage,
    int? totalquiz,
    int? id,
    String? quizname,
  }) {
    return Newquizmodel(
      quizimage: quizimage ?? this.quizimage,
      totalquiz: totalquiz ?? this.totalquiz,
      id: id ?? this.id,
      quizname: quizname ?? this.quizname,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quizimage': quizimage,
      'totalquiz': totalquiz,
      'id': id,
      'quizname': quizname,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Newquizmodel &&
        other.quizimage == quizimage &&
        other.totalquiz == totalquiz &&
        other.id == id &&
        other.quizname == quizname;
  }

  @override
  int get hashCode {
    return quizimage.hashCode ^ totalquiz.hashCode ^ id.hashCode ^ quizname.hashCode;
  }

  @override
  String toString() {
    return 'Newquizmodel(quizimage: $quizimage, totalquiz: $totalquiz, id: $id, quizname: $quizname)';
  }
}
