<<<<<<< HEAD
/*import 'package:quiz_prokit/modelgen/newquizmodel.g.dart';
=======
import 'package:quiz_prokit/modelgen/newquizmodel.g.dart';
>>>>>>> 95d9c14f5445c2c9bf9ed047dfdc0454b55eda85

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
<<<<<<< HEAD
*/
=======

>>>>>>> 95d9c14f5445c2c9bf9ed047dfdc0454b55eda85

