import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/lesson_provider.dart';
import '../widgets/lesson_card.dart';
import 'lesson_flow_screen.dart';
import 'test_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _showNeedLessonWarning(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Önce en az bir dersi tamamlamalısınız!'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _openTest(BuildContext context, LessonProvider provider) {
    if (provider.completedLessonCount == 0) {
      _showNeedLessonWarning(context);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const TestScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LessonProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('İngilizce Öğren'),
        actions: [
          // Test Çöz butonu (metinli)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: TextButton.icon(
                onPressed: () => _openTest(context, provider),
                icon: const Icon(Icons.quiz, color: Colors.orange),
                label: const Text(
                  'Test Çöz',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Dark Mode Toggle
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            tooltip: isDark ? 'Aydınlık Moda Geç' : 'Karanlık Moda Geç',
            onPressed: () => provider.toggleDarkMode(),
          ),
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
      body: Column(
        children: [
          // Test Banner (her zaman görünür, tıklanınca uyarı veya test)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: const Icon(Icons.quiz, size: 32, color: Colors.orange),
                title: const Text(
                  'Genel Test',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  provider.completedLessonCount > 0
                      ? '${provider.completedLessonCount} dersten ${provider.completedLessonCount * 4}+ soru'
                      : 'Henüz ders tamamlamadınız',
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => _openTest(context, provider),
              ),
            ),
          ),
          // Ders Listesi
          Expanded(
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}