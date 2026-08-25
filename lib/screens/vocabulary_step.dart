import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import '../models/vocabulary_item.dart';

class VocabularyStep extends StatefulWidget {
  final List<VocabularyItem> vocabulary;
  final VoidCallback onNext;

  const VocabularyStep({Key? key, required this.vocabulary, required this.onNext}) : super(key: key);

  @override
  _VocabularyStepState createState() => _VocabularyStepState();
}

class _VocabularyStepState extends State<VocabularyStep> {
  int _currentIndex = 0;
  bool _showTransition = false;
  Set<int> _seenWords = {}; // Görülen kelimelerin indeksleri
  late PageController _pageController;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _seenWords.add(0); // İlk kelime otomatik olarak görülür
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  bool get _allWordsSeen => _seenWords.length >= widget.vocabulary.length;

  void _goToPage(int index) {
    if (index < 0 || index >= widget.vocabulary.length) return;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentIndex = index;
      _seenWords.add(index);
      _showTransition = false;
    });
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (_showTransition) {
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.space) {
          widget.onNext();
        }
        return;
      }

      if (event.logicalKey == LogicalKeyboardKey.arrowLeft ||
          event.logicalKey == LogicalKeyboardKey.arrowUp) {
        _goToPage(_currentIndex - 1);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowRight ||
          event.logicalKey == LogicalKeyboardKey.arrowDown) {
        if (_currentIndex == widget.vocabulary.length - 1) {
          if (_allWordsSeen) {
            setState(() => _showTransition = true);
          } else {
            _showSnackBar('Önce tüm kelimeleri görmelisiniz!');
          }
        } else {
          _goToPage(_currentIndex + 1);
        }
      }
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: _handleKeyEvent,
      child: Listener(
        onPointerSignal: (event) {
          if (event is PointerScrollEvent) {
            if (_showTransition) return;
            if (event.scrollDelta.dy > 0) {
              if (_currentIndex == widget.vocabulary.length - 1) {
                if (_allWordsSeen) {
                  setState(() => _showTransition = true);
                } else {
                  _showSnackBar('Önce tüm kelimeleri görmelisiniz!');
                }
              } else {
                _goToPage(_currentIndex + 1);
              }
            } else if (event.scrollDelta.dy < 0) {
              _goToPage(_currentIndex - 1);
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _showTransition ? _buildTransitionScreen() : _buildVocabularyScreen(),
        ),
      ),
    );
  }

  Widget _buildTransitionScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.menu_book, size: 64, color: Colors.orange),
            const SizedBox(height: 24),
            const Text(
              'Kelimeleri Tamamladın!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Harika iş çıkardın! Şimdi sırada bu derste işleyeceğimiz konunun detaylı anlatımı var.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: widget.onNext,
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Konu Anlatımına Geç'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Windows\'ta "Enter" tuşuna basabilirsiniz',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVocabularyScreen() {
    return Column(
      children: [
        const Text(
          'Yeni Kelimeler',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          'Görülen: ${_seenWords.length}/${widget.vocabulary.length}',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.vocabulary.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
                _seenWords.add(index);
              });
            },
            itemBuilder: (context, index) {
              final item = widget.vocabulary[index];
              return Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.word,
                        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.translation,
                        style: const TextStyle(fontSize: 24, color: Colors.grey),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        item.exampleSentence,
                        style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        item.exampleTranslation,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        // Sayfa göstergesi
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.vocabulary.length,
                (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: index == _currentIndex ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: _seenWords.contains(index)
                    ? (index == _currentIndex ? Colors.blue : Colors.green)
                    : Colors.grey[300],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Ok butonları ve İlerle butonu
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _currentIndex > 0 ? () => _goToPage(_currentIndex - 1) : null,
              icon: const Icon(Icons.arrow_back),
              iconSize: 32,
            ),
            const SizedBox(width: 24),
            ElevatedButton(
              onPressed: () {
                if (_currentIndex == widget.vocabulary.length - 1) {
                  if (_allWordsSeen) {
                    setState(() => _showTransition = true);
                  } else {
                    _showSnackBar('Önce tüm kelimeleri görmelisiniz!');
                  }
                } else {
                  _goToPage(_currentIndex + 1);
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                backgroundColor: _allWordsSeen ? Colors.green : null,
              ),
              child: Text(
                _currentIndex == widget.vocabulary.length - 1 ? 'Bitir' : 'Sonraki',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Tüm kelimeler görülmeden gösterilen uyarı
        if (!_allWordsSeen)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Konu anlatımına geçmek için tüm kelimeleri görün: ${_seenWords.length}/${widget.vocabulary.length}',
              style: const TextStyle(fontSize: 13, color: Colors.orange),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}