import 'dart:convert';

class NewquizmodelQuiztestmode {
  const NewquizmodelQuiztestmode({
    required this.newquizmodel,
    required this.quiztestmode,
  });

  factory NewquizmodelQuiztestmode.fromMap(Map<String, dynamic> map) {
    return NewquizmodelQuiztestmode(
      newquizmodel: map['newquizmodel'].toInt(),
      quiztestmode: map['quiztestmode'].toInt(),
    );
  }

  factory NewquizmodelQuiztestmode.fromJson(String source) => NewquizmodelQuiztestmode.fromMap(json.decode(source));

  final int newquizmodel;

  final int quiztestmode;

  NewquizmodelQuiztestmode copyWith({
    int? newquizmodel,
    int? quiztestmode,
  }) {
    return NewquizmodelQuiztestmode(
      newquizmodel: newquizmodel ?? this.newquizmodel,
      quiztestmode: quiztestmode ?? this.quiztestmode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'newquizmodel': newquizmodel,
      'quiztestmode': quiztestmode,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewquizmodelQuiztestmode &&
        other.newquizmodel == newquizmodel &&
        other.quiztestmode == quiztestmode;
  }

  @override
  int get hashCode {
    return newquizmodel.hashCode ^ quiztestmode.hashCode;
  }

  @override
  String toString() {
    return 'NewquizmodelQuiztestmode(newquizmodel: $newquizmodel, quiztestmode: $quiztestmode)';
  }
}
