import 'package:flutter/material.dart';
import '../models/content_section.dart';

class ContentStep extends StatelessWidget {
  final List<ContentSection> sections;
  final VoidCallback onNext;

  const ContentStep({Key? key, required this.sections, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            'Konu Anlatımı',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: sections.length,
              itemBuilder: (context, index) {
                final section = sections[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          section.title,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.orange),
                        ),
                        const SizedBox(height: 8),
                        Text(section.explanation, style: const TextStyle(fontSize: 16)),
                        const SizedBox(height: 16),
                        const Text('Örnekler:', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        for (int i = 0; i < section.examples.length; i++) ...[
                          Text(
                            '• ${section.examples[i]}',
                            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            '  ${section.exampleTranslations[i]}',
                            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text('Sorulara Geç', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}