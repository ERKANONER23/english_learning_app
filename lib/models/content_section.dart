class ContentSection {
  final String title;
  final String explanation;
  final List<String> examples;          // İngilizce örnekler
  final List<String> exampleTranslations; // Türkçe çevirileri

  const ContentSection({
    required this.title,
    required this.explanation,
    required this.examples,
    required this.exampleTranslations,
  });
}