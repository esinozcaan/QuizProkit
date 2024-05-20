import 'dart:convert';

class QuizbadgesmodelQuizscoresmode {
  const QuizbadgesmodelQuizscoresmode({
    required this.quizbadgesmodel,
    required this.quizscoresmode,
  });

  factory QuizbadgesmodelQuizscoresmode.fromMap(Map<String, dynamic> map) {
    return QuizbadgesmodelQuizscoresmode(
      quizbadgesmodel: map['quizbadgesmodel'].toInt(),
      quizscoresmode: map['quizscoresmode'].toInt(),
    );
  }

  factory QuizbadgesmodelQuizscoresmode.fromJson(String source) =>
      QuizbadgesmodelQuizscoresmode.fromMap(json.decode(source));

  final int quizbadgesmodel;

  final int quizscoresmode;

  QuizbadgesmodelQuizscoresmode copyWith({
    int? quizbadgesmodel,
    int? quizscoresmode,
  }) {
    return QuizbadgesmodelQuizscoresmode(
      quizbadgesmodel: quizbadgesmodel ?? this.quizbadgesmodel,
      quizscoresmode: quizscoresmode ?? this.quizscoresmode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quizbadgesmodel': quizbadgesmodel,
      'quizscoresmode': quizscoresmode,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuizbadgesmodelQuizscoresmode &&
        other.quizbadgesmodel == quizbadgesmodel &&
        other.quizscoresmode == quizscoresmode;
  }

  @override
  int get hashCode {
    return quizbadgesmodel.hashCode ^ quizscoresmode.hashCode;
  }

  @override
  String toString() {
    return 'QuizbadgesmodelQuizscoresmode(quizbadgesmodel: $quizbadgesmodel, quizscoresmode: $quizscoresmode)';
  }
}
