import 'package:flutter/material.dart';
import '../models/lesson.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  final bool isCompleted;
  final double? accuracy;
  final VoidCallback onTap;

  const LessonCard({
    Key? key,
    required this.lesson,
    required this.isCompleted,
    this.accuracy,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Text(lesson.icon, style: const TextStyle(fontSize: 36)),
        title: Text(
          lesson.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(lesson.description),
        trailing: isCompleted
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 28),
            if (accuracy != null)
              Text(
                '%${(accuracy! * 100).round()}',
                style: const TextStyle(fontSize: 12),
              ),
          ],
        )
            : const Icon(Icons.lock, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}