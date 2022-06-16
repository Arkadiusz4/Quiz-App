import 'package:flutter/foundation.dart';
import 'package:quiz_app/import.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/enums/difficulty.dart';

const base = 'https://opentdb.com/api.php';

Future<List<Question>> getQuestions(
    category, int numberOfQuestion, String difficulty) async {
  String url =
      '$base?amount=$numberOfQuestion&category=${category.id}&diffculty=${difficulty.toLowerCase()}';
}
