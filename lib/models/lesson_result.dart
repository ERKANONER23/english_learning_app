class LessonResult {
  final int lessonId;
  final int correctAnswers;
  final int totalQuestions;
  final int xpEarned;
  final DateTime completedAt;

  const LessonResult({
    required this.lessonId,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.xpEarned,
    required this.completedAt,
  });

  double get accuracy => totalQuestions > 0 ? correctAnswers / totalQuestions : 0.0;
}