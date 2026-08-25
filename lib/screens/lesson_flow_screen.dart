import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/lesson.dart';
import '../providers/lesson_provider.dart';
import '../widgets/progress_bar.dart';
import 'vocabulary_step.dart';
import 'content_step.dart';
import 'quiz_step.dart';
import 'summary_step.dart';

class LessonFlowScreen extends StatefulWidget {
  final Lesson lesson;
  const LessonFlowScreen({Key? key, required this.lesson}) : super(key: key);

  @override
  _LessonFlowScreenState createState() => _LessonFlowScreenState();
}

class _LessonFlowScreenState extends State<LessonFlowScreen> {
  int _currentStep = 0;
  int _correctAnswers = 0;
  int _totalQuestions = 0;

  void _nextStep() {
    setState(() {
      if (_currentStep < 3) {
        _currentStep++;
      } else {
        Navigator.pop(context); // Özet adımından sonra ana ekrana dön
      }
    });
  }

  void _finishQuiz(int correct, int total) {
    _correctAnswers = correct;
    _totalQuestions = total;
    Provider.of<LessonProvider>(context, listen: false)
        .completeLesson(widget.lesson.id, correct, total);
    _nextStep();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: CustomProgressBar(
              progress: (_currentStep + 1) / 4,
              height: 14.0,
              progressColor: Colors.green,
            ),
          ),
          Expanded(
            child: _buildStep(),
          ),
        ],
      ),
    );
  }

  Widget _buildStep() {
    switch (_currentStep) {
      case 0:
        return VocabularyStep(
          vocabulary: widget.lesson.vocabulary,
          onNext: _nextStep,
        );
      case 1:
        return ContentStep(
          sections: widget.lesson.content,
          onNext: _nextStep,
        );
      case 2:
        return QuizStep(
          questions: widget.lesson.questions,
          onFinish: _finishQuiz,
        );
      case 3:
        return SummaryStep(
          lesson: widget.lesson,
          correctAnswers: _correctAnswers,
          totalQuestions: _totalQuestions,
          onNext: _nextStep,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}