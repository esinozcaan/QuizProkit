import 'package:quiz_prokit/model/QuizModels.dart';

class NewQuizModelConverter {
  /// Converter from json to lists of  entity
  static List<NewQuizModel> toList(dynamic data) {
    return (data as List<dynamic>)
        .map((e) => NewQuizModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  ///
  static NewQuizModel toSingle(dynamic data) {
    return NewQuizModel.fromJson(
      (data as List).first as Map<String, dynamic>,
    );
  }
}
