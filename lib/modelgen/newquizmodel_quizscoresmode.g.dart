import 'dart:convert';

class NewquizmodelQuizscoresmode {
  const NewquizmodelQuizscoresmode({
    required this.newquizmodel,
    required this.quizscoresmode,
  });

  factory NewquizmodelQuizscoresmode.fromMap(Map<String, dynamic> map) {
    return NewquizmodelQuizscoresmode(
      newquizmodel: map['newquizmodel'].toInt(),
      quizscoresmode: map['quizscoresmode'].toInt(),
    );
  }

  factory NewquizmodelQuizscoresmode.fromJson(String source) => NewquizmodelQuizscoresmode.fromMap(json.decode(source));

  final int newquizmodel;

  final int quizscoresmode;

  NewquizmodelQuizscoresmode copyWith({
    int? newquizmodel,
    int? quizscoresmode,
  }) {
    return NewquizmodelQuizscoresmode(
      newquizmodel: newquizmodel ?? this.newquizmodel,
      quizscoresmode: quizscoresmode ?? this.quizscoresmode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'newquizmodel': newquizmodel,
      'quizscoresmode': quizscoresmode,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewquizmodelQuizscoresmode &&
        other.newquizmodel == newquizmodel &&
        other.quizscoresmode == quizscoresmode;
  }

  @override
  int get hashCode {
    return newquizmodel.hashCode ^ quizscoresmode.hashCode;
  }

  @override
  String toString() {
    return 'NewquizmodelQuizscoresmode(newquizmodel: $newquizmodel, quizscoresmode: $quizscoresmode)';
  }
}
