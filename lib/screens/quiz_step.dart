import 'package:flutter/material.dart';
import '../models/question.dart';
import '../widgets/progress_bar.dart';

class QuizStep extends StatefulWidget {
  final List<Question> questions;
  final Function(int correct, int total) onFinish;

  const QuizStep({Key? key, required this.questions, required this.onFinish}) : super(key: key);

  @override
  _QuizStepState createState() => _QuizStepState();
}

class _QuizStepState extends State<QuizStep> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  int? _selectedAnswer;
  bool _answered = false;

  void _checkAnswer() {
    if (_selectedAnswer == null) return;
    setState(() {
      _answered = true;
      if (_selectedAnswer == widget.questions[_currentQuestionIndex].correctAnswerIndex) {
        _correctAnswers++;
      }
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedAnswer = null;
        _answered = false;
      });
    } else {
      widget.onFinish(_correctAnswers, widget.questions.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[_currentQuestionIndex];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomProgressBar(
            progress: (_currentQuestionIndex + 1) / widget.questions.length,
            height: 10.0,
            progressColor: Colors.blue,
          ),
          const SizedBox(height: 16),
          Text(
            'Soru ${_currentQuestionIndex + 1}/${widget.questions.length}',
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

            // Renk belirleme
            Color buttonColor;
            Color borderColor;
            Color textColor = Colors.black;

            if (_answered) {
              // Kontrol edildikten sonra
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
              // Seçildi ancak henüz kontrol edilmedi
              buttonColor = Colors.blue;
              borderColor = Colors.blue;
              textColor = Colors.white;
            } else {
              // Seçilmemiş ve cevaplanmamış
              buttonColor = Colors.white;
              borderColor = Colors.grey;
              textColor = Colors.black;
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
                  ? (_currentQuestionIndex < widget.questions.length - 1 ? 'Sonraki Soru' : 'Bitir')
                  : 'Kontrol Et',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}