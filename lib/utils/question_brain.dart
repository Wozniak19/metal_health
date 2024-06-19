import 'package:metal_health/question.dart';

class QuestionBrain {
  int _questionNumber = 0;
  final List<Question> questionBank;

  QuestionBrain({required this.questionBank});

  void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isEndOfList() {
    return _questionNumber >= questionBank.length;
  }

  bool isLastQuestion() {
    return _questionNumber == questionBank.length - 1;
  }

  Question getCurrentQuestion() {
    return questionBank[_questionNumber];
  }

  int questionCount() {
    return questionBank.length;
  }
}
