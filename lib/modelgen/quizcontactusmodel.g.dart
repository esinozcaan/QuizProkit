import 'dart:convert';

class Quizcontactusmodel {
  const Quizcontactusmodel({
    required this.subtitle,
    required this.title,
    required this.id,
  });

  factory Quizcontactusmodel.fromMap(Map<String, dynamic> map) {
    return Quizcontactusmodel(
      subtitle: map['subtitle'],
      title: map['title'],
      id: map['id'].toInt(),
    );
  }

  factory Quizcontactusmodel.fromJson(String source) => Quizcontactusmodel.fromMap(json.decode(source));

  final String subtitle;

  final String title;

  final int id;

  Quizcontactusmodel copyWith({
    String? subtitle,
    String? title,
    int? id,
  }) {
    return Quizcontactusmodel(
      subtitle: subtitle ?? this.subtitle,
      title: title ?? this.title,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'subtitle': subtitle,
      'title': title,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quizcontactusmodel && other.subtitle == subtitle && other.title == title && other.id == id;
  }

  @override
  int get hashCode {
    return subtitle.hashCode ^ title.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Quizcontactusmodel(subtitle: $subtitle, title: $title, id: $id)';
  }
}
