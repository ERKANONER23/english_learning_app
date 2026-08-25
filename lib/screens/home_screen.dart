import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/lesson_provider.dart';
import '../widgets/lesson_card.dart';
import 'lesson_flow_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LessonProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('İngilizce Öğren'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                '🔥 ${provider.totalXp} XP',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: provider.lessons.length,
        itemBuilder: (context, index) {
          final lesson = provider.lessons[index];
          final isCompleted = provider.isLessonCompleted(lesson.id);
          final result = provider.getResultForLesson(lesson.id);
          return LessonCard(
            lesson: lesson,
            isCompleted: isCompleted,
            accuracy: result?.accuracy,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonFlowScreen(lesson: lesson),
                ),
              );
            },
          );
        },
      ),
    );
  }
}