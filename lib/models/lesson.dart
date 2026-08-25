import 'vocabulary_item.dart';
import 'content_section.dart';
import 'question.dart';

class Lesson {
  final int id;
  final String title;
  final String description;
  final String level; // A1, A2 gibi
  final List<VocabularyItem> vocabulary;
  final List<ContentSection> content;
  final List<Question> questions;
  final int xpReward;
  final String icon; // Emoji veya ikon adı

  const Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.level,
    required this.vocabulary,
    required this.content,
    required this.questions,
    required this.xpReward,
    required this.icon,
  });
}