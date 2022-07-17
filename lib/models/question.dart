import 'package:core/models/enums.dart';

class Question {
  Question({
    required this.category,
  });

  Question.fromJson(dynamic json) {
    category = QuestionType.values.elementAt(json['category']);
  }

  late QuestionType category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = category;
    return map;
  }
}