import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/question.dart';
import '../providers/lesson_provider.dart';
import '../widgets/progress_bar.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question>? _questions;
  int _currentIndex = 0;
  int _correctAnswers = 0;
  int? _selectedAnswer;
  bool _answered = false;
  bool _finished = false;

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<LessonProvider>(context, listen: false);
    _questions = provider.getQuestionsForTest(maxQuestions: 20);
  }

  void _checkAnswer() {
    if (_selectedAnswer == null) return;
    setState(() {
      _answered = true;
      if (_selectedAnswer == _questions![_currentIndex].correctAnswerIndex) {
        _correctAnswers++;
      }
    });
  }

  void _nextQuestion() {
    if (_currentIndex < _questions!.length - 1) {
      setState(() {
        _currentIndex++;
        _selectedAnswer = null;
        _answered = false;
      });
    } else {
      setState(() {
        _finished = true;
      });
    }
  }

  void _restartTest() {
    final provider = Provider.of<LessonProvider>(context, listen: false);
    setState(() {
      _questions = provider.getQuestionsForTest(maxQuestions: 20);
      _currentIndex = 0;
      _correctAnswers = 0;
      _selectedAnswer = null;
      _answered = false;
      _finished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_questions == null || _questions!.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Test Çöz')),

        body: const Center(
          child: Text('Henüz tamamlanmış ders yok. Önce dersleri bitirin!'),
        ),
      );
    }

    if (_finished) {
      return _buildResultScreen();
    }

    final question = _questions![_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Test ${_currentIndex + 1}/${_questions!.length}'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomProgressBar(
              progress: (_currentIndex + 1) / _questions!.length,
              height: 10.0,
              progressColor: Colors.orange,
            ),
            const SizedBox(height: 16),
            Text(
              'Soru ${_currentIndex + 1}/${_questions!.length}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              question.prompt,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ...question.options.asMap().entries.map((entry) {
              final index = entry.key;
              final option = entry.value;
              Color buttonColor;
              Color borderColor;
              Color textColor;

              if (_answered) {
                if (index == question.correctAnswerIndex) {
                  buttonColor = Colors.green;
                  borderColor = Colors.green;
                  textColor = Colors.white;
                } else if (index == _selectedAnswer) {
                  buttonColor = Colors.red;
                  borderColor = Colors.red;
                  textColor = Colors.white;
                } else {
                  buttonColor = Colors.grey[200]!;
                  borderColor = Colors.grey;
                  textColor = Colors.black;
                }
              } else if (_selectedAnswer == index) {
                buttonColor = Colors.orange;
                borderColor = Colors.orange;
                textColor = Colors.white;
              } else {
                buttonColor = Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[800]!
                    : Colors.white;
                borderColor = Colors.grey;
                textColor = Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black;
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: _answered ? null : () => setState(() => _selectedAnswer = index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: textColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: borderColor),
                    ),
                  ),
                  child: Text(option, style: const TextStyle(fontSize: 18)),
                ),
              );
            }).toList(),
            const SizedBox(height: 16),
            if (_answered) ...[
              Text(
                question.explanation,
                style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.blueGrey),
              ),
              const SizedBox(height: 16),
            ],
            ElevatedButton(
              onPressed: _answered ? _nextQuestion : _checkAnswer,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: Text(
                _answered
                    ? (_currentIndex < _questions!.length - 1 ? 'Sonraki Soru' : 'Sonucu Gör')
                    : 'Kontrol Et',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultScreen() {
    final percentage = _correctAnswers / _questions!.length * 100;
    final passed = percentage >= 70;
    return Scaffold(
      appBar: AppBar(title: const Text('Test Sonucu'), automaticallyImplyLeading: false),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                passed ? '🎉' : '😢',
                style: const TextStyle(fontSize: 64),
              ),
              const SizedBox(height: 16),
              Text(
                passed ? 'Tebrikler!' : 'Tekrar Deneyin',
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        'Doğru: $_correctAnswers/${_questions!.length}',
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Başarı: %${percentage.round()}',
                        style: const TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _restartTest,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text('Yeniden Çöz'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text('Ana Ekrana Dön'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}