import 'dart:convert';

class NewquizmodelUser {
  const NewquizmodelUser({
    required this.newquizmodel,
    required this.user,
  });

  factory NewquizmodelUser.fromMap(Map<String, dynamic> map) {
    return NewquizmodelUser(
      newquizmodel: map['newquizmodel'].toInt(),
      user: map['user'].toInt(),
    );
  }

  factory NewquizmodelUser.fromJson(String source) => NewquizmodelUser.fromMap(json.decode(source));

  final int newquizmodel;

  final int user;

  NewquizmodelUser copyWith({
    int? newquizmodel,
    int? user,
  }) {
    return NewquizmodelUser(
      newquizmodel: newquizmodel ?? this.newquizmodel,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'newquizmodel': newquizmodel,
      'user': user,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewquizmodelUser && other.newquizmodel == newquizmodel && other.user == user;
  }

  @override
  int get hashCode {
    return newquizmodel.hashCode ^ user.hashCode;
  }

  @override
  String toString() {
    return 'NewquizmodelUser(newquizmodel: $newquizmodel, user: $user)';
  }
}
