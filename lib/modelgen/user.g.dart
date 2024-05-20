import 'dart:convert';

class User {
  const User({
    required this.name,
    required this.score,
    required this.id,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      score: map['score'],
      id: map['id'].toInt(),
    );
  }

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  final String name;

  final String score;

  final int id;

  User copyWith({
    String? name,
    String? score,
    int? id,
  }) {
    return User(
      name: name ?? this.name,
      score: score ?? this.score,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'score': score,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.name == name && other.score == score && other.id == id;
  }

  @override
  int get hashCode {
    return name.hashCode ^ score.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'User(name: $name, score: $score, id: $id)';
  }
}
