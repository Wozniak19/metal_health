import 'question.dart';

class QuestionBrain {
  final List<Question> questionBank;

  QuestionBrain({required this.questionBank});

  int questionCount() {
    return questionBank.length;
  }
}
