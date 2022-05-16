import 'package:quiz_app/enums/difficulty.dart';
import 'package:quiz_app/question_model.dart/question_model.dart';

abstract class BaseQuizRepository{
  Future<List<Question>> getQuestions ({
    int numQuestions,
    int categoryId,
    Difficulty difficulty,
  });
                               
}