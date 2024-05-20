import 'dart:convert';

class Quizbadgesmodel {
  const Quizbadgesmodel({
    required this.titile,
    required this.id,
    required this.img,
    required this.subtitle,
  });

  factory Quizbadgesmodel.fromMap(Map<String, dynamic> map) {
    return Quizbadgesmodel(
      titile: map['titile'],
      id: map['id'].toInt(),
      img: map['img'],
      subtitle: map['subtitle'],
    );
  }

  factory Quizbadgesmodel.fromJson(String source) => Quizbadgesmodel.fromMap(json.decode(source));

  final String titile;

  final int id;

  final String img;

  final String subtitle;

  Quizbadgesmodel copyWith({
    String? titile,
    int? id,
    String? img,
    String? subtitle,
  }) {
    return Quizbadgesmodel(
      titile: titile ?? this.titile,
      id: id ?? this.id,
      img: img ?? this.img,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titile': titile,
      'id': id,
      'img': img,
      'subtitle': subtitle,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quizbadgesmodel &&
        other.titile == titile &&
        other.id == id &&
        other.img == img &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode {
    return titile.hashCode ^ id.hashCode ^ img.hashCode ^ subtitle.hashCode;
  }

  @override
  String toString() {
    return 'Quizbadgesmodel(titile: $titile, id: $id, img: $img, subtitle: $subtitle)';
  }
}
