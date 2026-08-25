enum QuestionType { multipleChoice, fillInBlank, trueFalse, matching }

class Question {
  final String prompt;
  final QuestionType type;
  final List<String> options;
  final int correctAnswerIndex;
  final String? correctAnswerText; // fillInBlank için opsiyonel
  final String explanation;

  const Question({
    required this.prompt,
    required this.type,
    this.options = const [],
    this.correctAnswerIndex = 0,
    this.correctAnswerText,
    required this.explanation,
  });
}