import 'package:quiz_prokit/modelgen/newquizmodel.g.dart';

class NewQuizModelConverter {
  /// Converter from json to lists of  entity
  static List<Newquizmodel> toList(Map data) {
    return data.map(item) => Newquizmodel.fromMap(e)
        .toList();
  }

  ///
  static Newquizmodel toSingle(dynamic data) {
    return Newquizmodel.fromJson(
      (data as List).first as Map<String, dynamic>,
    );
  }
}


