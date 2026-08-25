import 'package:flutter/material.dart';
import '../models/lesson.dart';

class SummaryStep extends StatelessWidget {
  final Lesson lesson;
  final int correctAnswers;
  final int totalQuestions;
  final VoidCallback onNext;

  const SummaryStep({
    Key? key,
    required this.lesson,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accuracy = totalQuestions > 0 ? (correctAnswers / totalQuestions * 100).round() : 0;
    final xpEarned = totalQuestions > 0 ? (lesson.xpReward * (correctAnswers / totalQuestions)).round() : 0;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '🎉',
            style: TextStyle(fontSize: 64),
          ),
          const SizedBox(height: 16),
          const Text(
            'Ders Tamamlandı!',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    lesson.title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _StatItem(label: 'Doğru', value: '$correctAnswers/$totalQuestions'),
                      _StatItem(label: 'Başarı', value: '%$accuracy'),
                      _StatItem(label: 'XP', value: '$xpEarned'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text('Ana Ekrana Dön', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }
}