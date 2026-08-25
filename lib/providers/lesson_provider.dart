import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/lesson.dart';
import '../models/lesson_result.dart';
import '../data/lessons_1_20.dart';
import '../data/lessons_21_40.dart';
import '../data/lessons_41_60.dart';
import '../data/lessons_61_80.dart';
import '../data/lessons_81_100.dart';
import '../data/lessons_101_120.dart';
import '../data/lessons_121_140.dart';
import '../data/lessons_141_160.dart';
import '../data/lessons_161_180.dart';
import '../data/lessons_181_200.dart';
import '../models/question.dart';   // Bu satırı ekleyin

class LessonProvider extends ChangeNotifier {
  List<Lesson> _lessons = [];
  Map<int, LessonResult> _completedLessons = {};
  bool _isDarkMode = false;

  LessonProvider() {
    _lessons = [
      ...Lessons1to20.getLessons(),
      ...Lessons21to40.getLessons(),
      ...Lessons41to60.getLessons(),
      ...Lessons61to80.getLessons(),
      ...Lessons81to100.getLessons(),
      ...Lessons101to120.getLessons(),
      ...Lessons121to140.getLessons(),
      ...Lessons141to160.getLessons(),
      ...Lessons161to180.getLessons(),
      ...Lessons181to200.getLessons(),
    ];
    _loadProgress();
  }

  List<Lesson> get lessons => _lessons;
  Map<int, LessonResult> get completedLessons => _completedLessons;
  bool get isDarkMode => _isDarkMode;

  bool isLessonCompleted(int lessonId) => _completedLessons.containsKey(lessonId);

  LessonResult? getResultForLesson(int lessonId) => _completedLessons[lessonId];

  int get totalXp => _completedLessons.values.fold(0, (sum, result) => sum + result.xpEarned);

  // Tamamlanan ders sayısı
  int get completedLessonCount => _completedLessons.length;

  // Dark mode toggle
  Future<void> toggleDarkMode() async {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('dark_mode', _isDarkMode);
  }

  // Test için tamamlanan derslerden soruları topla
  List<Question> getQuestionsForTest({int maxQuestions = 20}) {
    final allQuestions = <Question>[];
    for (final lessonId in _completedLessons.keys) {
      final lesson = _lessons.firstWhere((l) => l.id == lessonId);
      allQuestions.addAll(lesson.questions);
    }
    if (allQuestions.isEmpty) return [];
    allQuestions.shuffle();
    return allQuestions.take(maxQuestions).toList();
  }

  void completeLesson(int lessonId, int correctAnswers, int totalQuestions) {
    final lesson = _lessons.firstWhere((l) => l.id == lessonId);
    final xpEarned = (lesson.xpReward * (correctAnswers / totalQuestions)).round();
    final result = LessonResult(
      lessonId: lessonId,
      correctAnswers: correctAnswers,
      totalQuestions: totalQuestions,
      xpEarned: xpEarned,
      completedAt: DateTime.now(),
    );
    _completedLessons[lessonId] = result;
    _saveProgress();
    notifyListeners();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final completedIds = prefs.getStringList('completed_lessons') ?? [];
    _isDarkMode = prefs.getBool('dark_mode') ?? false;
    for (final idStr in completedIds) {
      final id = int.tryParse(idStr);
      if (id != null) {
        _completedLessons[id] = LessonResult(
          lessonId: id,
          correctAnswers: prefs.getInt('correct_$id') ?? 0,
          totalQuestions: prefs.getInt('total_$id') ?? 0,
          xpEarned: prefs.getInt('xp_$id') ?? 0,
          completedAt: DateTime.now(),
        );
      }
    }
    notifyListeners();
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final completedIds = _completedLessons.keys.map((id) => id.toString()).toList();
    await prefs.setStringList('completed_lessons', completedIds);
    for (final entry in _completedLessons.entries) {
      await prefs.setInt('correct_${entry.key}', entry.value.correctAnswers);
      await prefs.setInt('total_${entry.key}', entry.value.totalQuestions);
      await prefs.setInt('xp_${entry.key}', entry.value.xpEarned);
    }
  }
}