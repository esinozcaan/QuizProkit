import 'dart:convert';

class Quizrecentsearchdatamodel {
  const Quizrecentsearchdatamodel({
    required this.id,
    required this.name,
  });

  factory Quizrecentsearchdatamodel.fromMap(Map<String, dynamic> map) {
    return Quizrecentsearchdatamodel(
      id: map['id'].toInt(),
      name: map['name'],
    );
  }

  factory Quizrecentsearchdatamodel.fromJson(String source) => Quizrecentsearchdatamodel.fromMap(json.decode(source));

  final int id;

  final String name;

  Quizrecentsearchdatamodel copyWith({
    int? id,
    String? name,
  }) {
    return Quizrecentsearchdatamodel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quizrecentsearchdatamodel && other.id == id && other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode;
  }

  @override
  String toString() {
    return 'Quizrecentsearchdatamodel(id: $id, name: $name)';
  }
}
