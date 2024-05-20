import 'dart:convert';

class Quiztestmode {
  const Quiztestmode({
    required this.description,
    required this.id,
    required this.heading,
    required this.type,
    required this.status,
    required this.image,
  });

  factory Quiztestmode.fromMap(Map<String, dynamic> map) {
    return Quiztestmode(
      description: map['description'],
      id: map['id'].toInt(),
      heading: map['heading'],
      type: map['type'],
      status: map['status'],
      image: map['image'],
    );
  }

  factory Quiztestmode.fromJson(String source) => Quiztestmode.fromMap(json.decode(source));

  final String description;

  final int id;

  final String heading;

  final String type;

  final String status;

  final String image;

  Quiztestmode copyWith({
    String? description,
    int? id,
    String? heading,
    String? type,
    String? status,
    String? image,
  }) {
    return Quiztestmode(
      description: description ?? this.description,
      id: id ?? this.id,
      heading: heading ?? this.heading,
      type: type ?? this.type,
      status: status ?? this.status,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'id': id,
      'heading': heading,
      'type': type,
      'status': status,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quiztestmode &&
        other.description == description &&
        other.id == id &&
        other.heading == heading &&
        other.type == type &&
        other.status == status &&
        other.image == image;
  }

  @override
  int get hashCode {
    return description.hashCode ^ id.hashCode ^ heading.hashCode ^ type.hashCode ^ status.hashCode ^ image.hashCode;
  }

  @override
  String toString() {
    return 'Quiztestmode(description: $description, id: $id, heading: $heading, type: $type, status: $status, image: $image)';
  }
}
