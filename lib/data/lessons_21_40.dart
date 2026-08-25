import '../models/lesson.dart';
import '../models/vocabulary_item.dart';
import '../models/content_section.dart';
import '../models/question.dart';

class Lessons21to40 {
  static List<Lesson> getLessons() {
    return [
      // ==================== DERS 21 ====================
      Lesson(
        id: 21,
        title: 'Giysiler',
        description: 'Günlük giyim eşyalarını öğrenin',
        level: 'A1',
        icon: '👕',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Shirt', translation: 'Gömlek', exampleSentence: 'I wear a white shirt.', exampleTranslation: 'Beyaz bir gömlek giyerim.'),
          VocabularyItem(word: 'Trousers', translation: 'Pantolon', exampleSentence: 'These trousers are black.', exampleTranslation: 'Bu pantolon siyah.'),
          VocabularyItem(word: 'Dress', translation: 'Elbise', exampleSentence: 'She has a red dress.', exampleTranslation: 'Onun kırmızı bir elbisesi var.'),
          VocabularyItem(word: 'Skirt', translation: 'Etek', exampleSentence: 'The skirt is short.', exampleTranslation: 'Etek kısa.'),
          VocabularyItem(word: 'Shoes', translation: 'Ayakkabılar', exampleSentence: 'My shoes are new.', exampleTranslation: 'Ayakkabılarım yeni.'),
          VocabularyItem(word: 'Socks', translation: 'Çoraplar', exampleSentence: 'I need new socks.', exampleTranslation: 'Yeni çoraplara ihtiyacım var.'),
          VocabularyItem(word: 'Jacket', translation: 'Ceket', exampleSentence: 'The jacket is warm.', exampleTranslation: 'Ceket sıcak tutuyor.'),
          VocabularyItem(word: 'Hat', translation: 'Şapka', exampleSentence: 'He wears a hat in winter.', exampleTranslation: 'Kışın şapka takar.'),
        ],
        content: [
          ContentSection(
            title: 'Giyim Eşyaları',
            explanation: 'Giysilerden bahsederken "wear" (giymek) fiili kullanılır. Giysiler sayılabilir isimlerdir.',
            examples: ['I wear a blue shirt.', 'She wears a red dress.', 'He wears black shoes.'],
            exampleTranslations: ['Mavi bir gömlek giyerim.', 'Kırmızı bir elbise giyer.', 'Siyah ayakkabı giyer.'],
          ),
          ContentSection(
            title: 'Giysi Sorma',
            explanation: 'Birinin ne giydiğini sormak için "What are you wearing?" veya "What is he/she wearing?" kullanılır.',
            examples: ['What are you wearing?', 'I am wearing a white shirt and blue trousers.', 'What is she wearing?', 'She is wearing a yellow dress.'],
            exampleTranslations: ['Ne giyiyorsun?', 'Beyaz bir gömlek ve mavi pantolon giyiyorum.', 'O ne giyiyor?', 'Sarı bir elbise giyiyor.'],
          ),
        ],
        questions: [
          Question(prompt: '"Shirt" ne demektir?', type: QuestionType.multipleChoice, options: ['Pantolon', 'Gömlek', 'Ceket', 'Etek'], correctAnswerIndex: 1, explanation: '"Shirt" gömlek demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ a blue shirt." (giymek)', type: QuestionType.fillInBlank, options: ['wear', 'wears', 'wearing', 'wore'], correctAnswerIndex: 0, explanation: '"I" ile "wear" kullanılır.'),
          Question(prompt: '"Dress" ne demektir?', type: QuestionType.multipleChoice, options: ['Etek', 'Elbise', 'Gömlek', 'Ceket'], correctAnswerIndex: 1, explanation: '"Dress" elbise demektir.'),
        ],
      ),

      // ==================== DERS 22 ====================
      Lesson(
        id: 22,
        title: 'Ev Eşyaları',
        description: 'Evde bulunan temel eşyaları öğrenin',
        level: 'A1',
        icon: '🛋️',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Table', translation: 'Masa', exampleSentence: 'The book is on the table.', exampleTranslation: 'Kitap masanın üzerinde.'),
          VocabularyItem(word: 'Chair', translation: 'Sandalye', exampleSentence: 'There are four chairs.', exampleTranslation: 'Dört sandalye var.'),
          VocabularyItem(word: 'Bed', translation: 'Yatak', exampleSentence: 'The bed is comfortable.', exampleTranslation: 'Yatak rahat.'),
          VocabularyItem(word: 'Sofa', translation: 'Kanepe', exampleSentence: 'We sit on the sofa.', exampleTranslation: 'Kanepede otururuz.'),
          VocabularyItem(word: 'Television', translation: 'Televizyon', exampleSentence: 'I watch television in the evening.', exampleTranslation: 'Akşamları televizyon izlerim.'),
          VocabularyItem(word: 'Fridge', translation: 'Buzdolabı', exampleSentence: 'The milk is in the fridge.', exampleTranslation: 'Süt buzdolabında.'),
          VocabularyItem(word: 'Washing machine', translation: 'Çamaşır makinesi', exampleSentence: 'The washing machine is new.', exampleTranslation: 'Çamaşır makinesi yeni.'),
          VocabularyItem(word: 'Mirror', translation: 'Ayna', exampleSentence: 'Look in the mirror.', exampleTranslation: 'Aynaya bak.'),
        ],
        content: [
          ContentSection(
            title: 'Ev Eşyaları',
            explanation: 'Ev eşyaları sayılabilir isimlerdir. Yerlerini tarif ederken yer edatları kullanılır.',
            examples: ['The television is on the table.', 'The books are on the shelf.', 'The cat is under the sofa.'],
            exampleTranslations: ['Televizyon masanın üzerinde.', 'Kitaplar rafta.', 'Kedi kanepenin altında.'],
          ),
        ],
        questions: [
          Question(prompt: '"Fridge" ne demektir?', type: QuestionType.multipleChoice, options: ['Fırın', 'Buzdolabı', 'Çamaşır makinesi', 'Bulaşık makinesi'], correctAnswerIndex: 1, explanation: '"Fridge" buzdolabı demektir.'),
          Question(prompt: 'Boşluğu doldurun: "The book is ___ the table." (üstünde)', type: QuestionType.fillInBlank, options: ['in', 'on', 'under', 'behind'], correctAnswerIndex: 1, explanation: '"On" üstünde demektir.'),
        ],
      ),

      // ==================== DERS 23 ====================
      Lesson(
        id: 23,
        title: 'Vücut Bölümleri',
        description: 'İnsan vücudunun bölümlerini öğrenin',
        level: 'A1',
        icon: '🧍',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Head', translation: 'Baş', exampleSentence: 'My head hurts.', exampleTranslation: 'Başım ağrıyor.'),
          VocabularyItem(word: 'Eye', translation: 'Göz', exampleSentence: 'She has blue eyes.', exampleTranslation: 'Onun mavi gözleri var.'),
          VocabularyItem(word: 'Nose', translation: 'Burun', exampleSentence: 'Your nose is red.', exampleTranslation: 'Burnun kırmızı.'),
          VocabularyItem(word: 'Mouth', translation: 'Ağız', exampleSentence: 'Open your mouth.', exampleTranslation: 'Ağzını aç.'),
          VocabularyItem(word: 'Hand', translation: 'El', exampleSentence: 'Wash your hands.', exampleTranslation: 'Ellerini yıka.'),
          VocabularyItem(word: 'Arm', translation: 'Kol', exampleSentence: 'My arm is strong.', exampleTranslation: 'Kol güçlü.'),
          VocabularyItem(word: 'Leg', translation: 'Bacak', exampleSentence: 'He has long legs.', exampleTranslation: 'Onun uzun bacakları var.'),
          VocabularyItem(word: 'Foot', translation: 'Ayak', exampleSentence: 'My foot hurts.', exampleTranslation: 'Ayağım ağrıyor.'),
        ],
        content: [
          ContentSection(
            title: 'Vücut Bölümleri',
            explanation: 'Vücut bölümleri çoğul yapılırken düzensiz olanlar vardır: "foot" -> "feet", "tooth" -> "teeth".',
            examples: ['I have two hands.', 'She has ten fingers.', 'We have two feet.'],
            exampleTranslations: ['İki elim var.', 'Onun on parmağı var.', 'İki ayağımız var.'],
          ),
        ],
        questions: [
          Question(prompt: '"Eye" ne demektir?', type: QuestionType.multipleChoice, options: ['Kulak', 'Göz', 'Burun', 'Ağız'], correctAnswerIndex: 1, explanation: '"Eye" göz demektir.'),
          Question(prompt: 'Boşluğu doldurun: "She has blue ___." (gözler)', type: QuestionType.fillInBlank, options: ['eye', 'eyes', 'ears', 'hands'], correctAnswerIndex: 1, explanation: 'Çoğul olduğu için "eyes" kullanılır.'),
        ],
      ),

      // ==================== DERS 24 ====================
      Lesson(
        id: 24,
        title: 'Duygular',
        description: 'Temel duygu durumlarını ifade edin',
        level: 'A1',
        icon: '😊',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Happy', translation: 'Mutlu', exampleSentence: 'I am happy today.', exampleTranslation: 'Bugün mutluyum.'),
          VocabularyItem(word: 'Sad', translation: 'Üzgün', exampleSentence: 'She is sad.', exampleTranslation: 'O üzgün.'),
          VocabularyItem(word: 'Angry', translation: 'Kızgın', exampleSentence: 'He is angry.', exampleTranslation: 'O kızgın.'),
          VocabularyItem(word: 'Tired', translation: 'Yorgun', exampleSentence: 'I am tired after work.', exampleTranslation: 'İşten sonra yorgunum.'),
          VocabularyItem(word: 'Excited', translation: 'Heyecanlı', exampleSentence: 'We are excited about the trip.', exampleTranslation: 'Gezi için heyecanlıyız.'),
          VocabularyItem(word: 'Scared', translation: 'Korkmuş', exampleSentence: 'The child is scared.', exampleTranslation: 'Çocuk korkmuş.'),
          VocabularyItem(word: 'Surprised', translation: 'Şaşırmış', exampleSentence: 'I am surprised.', exampleTranslation: 'Şaşırdım.'),
          VocabularyItem(word: 'Bored', translation: 'Sıkılmış', exampleSentence: 'He is bored.', exampleTranslation: 'O sıkılmış.'),
        ],
        content: [
          ContentSection(
            title: 'Duyguları İfade Etme',
            explanation: 'Duyguları ifade ederken "I am", "He is", "She is" gibi yapılar kullanılır.',
            examples: ['I am happy.', 'She is sad.', 'We are excited.'],
            exampleTranslations: ['Ben mutluyum.', 'O üzgün.', 'Biz heyecanlıyız.'],
          ),
        ],
        questions: [
          Question(prompt: '"Sad" ne demektir?', type: QuestionType.multipleChoice, options: ['Mutlu', 'Üzgün', 'Kızgın', 'Yorgun'], correctAnswerIndex: 1, explanation: '"Sad" üzgün demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I am very ___." (mutlu)', type: QuestionType.fillInBlank, options: ['sad', 'angry', 'happy', 'tired'], correctAnswerIndex: 2, explanation: 'Mutlu "happy" demektir.'),
        ],
      ),

      // ==================== DERS 25 ====================
      Lesson(
        id: 25,
        title: 'Hobiler',
        description: 'Boş zaman aktivitelerini öğrenin',
        level: 'A1',
        icon: '🎯',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Reading', translation: 'Kitap okuma', exampleSentence: 'I like reading.', exampleTranslation: 'Kitap okumayı severim.'),
          VocabularyItem(word: 'Swimming', translation: 'Yüzme', exampleSentence: 'Swimming is fun.', exampleTranslation: 'Yüzmek eğlencelidir.'),
          VocabularyItem(word: 'Painting', translation: 'Resim yapma', exampleSentence: 'She loves painting.', exampleTranslation: 'Resim yapmayı çok sever.'),
          VocabularyItem(word: 'Cooking', translation: 'Yemek pişirme', exampleSentence: 'Cooking is relaxing.', exampleTranslation: 'Yemek pişirmek rahatlatıcıdır.'),
          VocabularyItem(word: 'Photography', translation: 'Fotoğrafçılık', exampleSentence: 'Photography is his hobby.', exampleTranslation: 'Fotoğrafçılık onun hobisi.'),
          VocabularyItem(word: 'Dancing', translation: 'Dans etme', exampleSentence: 'Dancing is great exercise.', exampleTranslation: 'Dans etmek harika bir egzersizdir.'),
          VocabularyItem(word: 'Gardening', translation: 'Bahçecilik', exampleSentence: 'My grandmother loves gardening.', exampleTranslation: 'Büyükannem bahçeciliği sever.'),
          VocabularyItem(word: 'Collecting', translation: 'Koleksiyon yapma', exampleSentence: 'He enjoys collecting stamps.', exampleTranslation: 'Pul koleksiyonu yapmaktan hoşlanır.'),
        ],
        content: [
          ContentSection(
            title: 'Hobilerden Bahsetme',
            explanation: 'Hobilerden bahsederken "I like", "I love", "I enjoy" fiilleri kullanılır. Fiile "-ing" eklenir.',
            examples: ['I like reading books.', 'She loves painting.', 'He enjoys cooking.'],
            exampleTranslations: ['Kitap okumayı severim.', 'Resim yapmayı çok sever.', 'Yemek yapmaktan hoşlanır.'],
          ),
          ContentSection(
            title: 'Hobi Sorma',
            explanation: 'Birinin hobisini sormak için "What is your hobby?" veya "What do you like doing?" kullanılır.',
            examples: ['What is your hobby?', 'My hobby is photography.', 'What do you like doing?', 'I like swimming.'],
            exampleTranslations: ['Hobin ne?', 'Hobim fotoğrafçılık.', 'Ne yapmaktan hoşlanırsın?', 'Yüzmeyi severim.'],
          ),
        ],
        questions: [
          Question(prompt: '"Swimming" ne demektir?', type: QuestionType.multipleChoice, options: ['Koşma', 'Yüzme', 'Dans', 'Resim'], correctAnswerIndex: 1, explanation: '"Swimming" yüzme demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I like ___ books." (okumak)', type: QuestionType.fillInBlank, options: ['read', 'reads', 'reading', 'to reading'], correctAnswerIndex: 2, explanation: '"Like" fiilinden sonra "-ing" takısı gelir: reading.'),
        ],
      ),

      // ==================== DERS 26 ====================
      Lesson(
        id: 26,
        title: 'Spor Aktiviteleri',
        description: 'Yaygın spor dallarını öğrenin',
        level: 'A1',
        icon: '⚽',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Football', translation: 'Futbol', exampleSentence: 'I play football.', exampleTranslation: 'Futbol oynarım.'),
          VocabularyItem(word: 'Basketball', translation: 'Basketbol', exampleSentence: 'Basketball is popular.', exampleTranslation: 'Basketbol popülerdir.'),
          VocabularyItem(word: 'Tennis', translation: 'Tenis', exampleSentence: 'She plays tennis.', exampleTranslation: 'O tenis oynar.'),
          VocabularyItem(word: 'Volleyball', translation: 'Voleybol', exampleSentence: 'We play volleyball on the beach.', exampleTranslation: 'Sahilde voleybol oynarız.'),
          VocabularyItem(word: 'Running', translation: 'Koşu', exampleSentence: 'Running is healthy.', exampleTranslation: 'Koşmak sağlıklıdır.'),
          VocabularyItem(word: 'Cycling', translation: 'Bisiklet sürme', exampleSentence: 'I go cycling on weekends.', exampleTranslation: 'Hafta sonları bisiklete binerim.'),
          VocabularyItem(word: 'Gym', translation: 'Spor salonu', exampleSentence: 'I go to the gym.', exampleTranslation: 'Spor salonuna giderim.'),
          VocabularyItem(word: 'Yoga', translation: 'Yoga', exampleSentence: 'Yoga is relaxing.', exampleTranslation: 'Yoga rahatlatıcıdır.'),
        ],
        content: [
          ContentSection(
            title: 'Spor Yapma',
            explanation: 'Spor aktivitelerinden bahsederken "play" (oynamak) veya "go" (gitmek) fiilleri kullanılır.',
            examples: ['I play football.', 'She goes running every morning.', 'We play basketball at school.'],
            exampleTranslations: ['Futbol oynarım.', 'Her sabah koşuya gider.', 'Okulda basketbol oynarız.'],
          ),
        ],
        questions: [
          Question(prompt: '"Football" ne demektir?', type: QuestionType.multipleChoice, options: ['Basketbol', 'Futbol', 'Tenis', 'Voleybol'], correctAnswerIndex: 1, explanation: '"Football" futbol demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ football." (oynamak)', type: QuestionType.fillInBlank, options: ['play', 'plays', 'playing', 'played'], correctAnswerIndex: 0, explanation: '"I" ile "play" kullanılır.'),
        ],
      ),

      // ==================== DERS 27 ====================
      Lesson(
        id: 27,
        title: 'Okul ve Eğitim',
        description: 'Okul ile ilgili temel kelimeler',
        level: 'A1',
        icon: '🏫',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'School', translation: 'Okul', exampleSentence: 'I go to school.', exampleTranslation: 'Okula giderim.'),
          VocabularyItem(word: 'Classroom', translation: 'Sınıf', exampleSentence: 'The classroom is big.', exampleTranslation: 'Sınıf büyük.'),
          VocabularyItem(word: 'Teacher', translation: 'Öğretmen', exampleSentence: 'My teacher is kind.', exampleTranslation: 'Öğretmenim naziktir.'),
          VocabularyItem(word: 'Student', translation: 'Öğrenci', exampleSentence: 'I am a student.', exampleTranslation: 'Ben bir öğrenciyim.'),
          VocabularyItem(word: 'Lesson', translation: 'Ders', exampleSentence: 'The lesson is interesting.', exampleTranslation: 'Ders ilginç.'),
          VocabularyItem(word: 'Homework', translation: 'Ödev', exampleSentence: 'I do my homework.', exampleTranslation: 'Ödevimi yaparım.'),
          VocabularyItem(word: 'Exam', translation: 'Sınav', exampleSentence: 'The exam is difficult.', exampleTranslation: 'Sınav zor.'),
          VocabularyItem(word: 'Book', translation: 'Kitap', exampleSentence: 'I read a book.', exampleTranslation: 'Kitap okurum.'),
        ],
        content: [
          ContentSection(
            title: 'Okul Hayatı',
            explanation: 'Okul ile ilgili kelimeleri kullanarak günlük rutininizi anlatabilirsiniz.',
            examples: ['I go to school every day.', 'My teacher is very good.', 'I do my homework in the evening.'],
            exampleTranslations: ['Her gün okula giderim.', 'Öğretmenim çok iyi.', 'Akşamları ödevimi yaparım.'],
          ),
        ],
        questions: [
          Question(prompt: '"Homework" ne demektir?', type: QuestionType.multipleChoice, options: ['Sınav', 'Ödev', 'Ders', 'Kitap'], correctAnswerIndex: 1, explanation: '"Homework" ödev demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ to school." (gitmek)', type: QuestionType.fillInBlank, options: ['go', 'goes', 'going', 'gone'], correctAnswerIndex: 0, explanation: '"I" ile "go" kullanılır.'),
        ],
      ),

      // ==================== DERS 28 ====================
      Lesson(
        id: 28,
        title: 'Sınıf Eşyaları',
        description: 'Sınıfta bulunan eşyaları öğrenin',
        level: 'A1',
        icon: '✏️',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Pen', translation: 'Kalem', exampleSentence: 'I need a pen.', exampleTranslation: 'Bir kaleme ihtiyacım var.'),
          VocabularyItem(word: 'Pencil', translation: 'Kurşun kalem', exampleSentence: 'I write with a pencil.', exampleTranslation: 'Kurşun kalemle yazarım.'),
          VocabularyItem(word: 'Notebook', translation: 'Defter', exampleSentence: 'My notebook is full.', exampleTranslation: 'Defterim dolu.'),
          VocabularyItem(word: 'Eraser', translation: 'Silgi', exampleSentence: 'Can I borrow your eraser?', exampleTranslation: 'Silgini ödünç alabilir miyim?'),
          VocabularyItem(word: 'Ruler', translation: 'Cetvel', exampleSentence: 'The ruler is long.', exampleTranslation: 'Cetvel uzun.'),
          VocabularyItem(word: 'Board', translation: 'Tahta', exampleSentence: 'The teacher writes on the board.', exampleTranslation: 'Öğretmen tahtaya yazar.'),
          VocabularyItem(word: 'Desk', translation: 'Sıra', exampleSentence: 'My desk is clean.', exampleTranslation: 'Sıram temiz.'),
          VocabularyItem(word: 'Bag', translation: 'Çanta', exampleSentence: 'My bag is heavy.', exampleTranslation: 'Çantam ağır.'),
        ],
        content: [
          ContentSection(
            title: 'Sınıf Eşyaları',
            explanation: 'Sınıf eşyalarını kullanarak ihtiyaçlarınızı ifade edebilirsiniz.',
            examples: ['Can I borrow a pen?', 'I need a new notebook.', 'The eraser is on the desk.'],
            exampleTranslations: ['Bir kalem ödünç alabilir miyim?', 'Yeni bir deftere ihtiyacım var.', 'Silgi sıranın üzerinde.'],
          ),
        ],
        questions: [
          Question(prompt: '"Eraser" ne demektir?', type: QuestionType.multipleChoice, options: ['Kalem', 'Silgi', 'Defter', 'Cetvel'], correctAnswerIndex: 1, explanation: '"Eraser" silgi demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I need a ___." (kalem)', type: QuestionType.fillInBlank, options: ['pen', 'eraser', 'ruler', 'board'], correctAnswerIndex: 0, explanation: 'Kalem "pen" demektir.'),
        ],
      ),

      // ==================== DERS 29 ====================
      Lesson(
        id: 29,
        title: 'Teknoloji',
        description: 'Günlük teknoloji terimlerini öğrenin',
        level: 'A1',
        icon: '💻',
        xpReward: 65,
        vocabulary: [
          VocabularyItem(word: 'Computer', translation: 'Bilgisayar', exampleSentence: 'I use a computer.', exampleTranslation: 'Bilgisayar kullanırım.'),
          VocabularyItem(word: 'Phone', translation: 'Telefon', exampleSentence: 'My phone is new.', exampleTranslation: 'Telefonum yeni.'),
          VocabularyItem(word: 'Tablet', translation: 'Tablet', exampleSentence: 'The tablet is light.', exampleTranslation: 'Tablet hafif.'),
          VocabularyItem(word: 'Internet', translation: 'İnternet', exampleSentence: 'I use the internet every day.', exampleTranslation: 'Her gün internet kullanırım.'),
          VocabularyItem(word: 'Screen', translation: 'Ekran', exampleSentence: 'The screen is big.', exampleTranslation: 'Ekran büyük.'),
          VocabularyItem(word: 'Keyboard', translation: 'Klavye', exampleSentence: 'The keyboard is wireless.', exampleTranslation: 'Klavye kablosuz.'),
          VocabularyItem(word: 'Mouse', translation: 'Fare (bilgisayar)', exampleSentence: 'The mouse is small.', exampleTranslation: 'Fare küçük.'),
          VocabularyItem(word: 'Charger', translation: 'Şarj aleti', exampleSentence: 'I need a charger.', exampleTranslation: 'Şarj aletine ihtiyacım var.'),
        ],
        content: [
          ContentSection(
            title: 'Teknoloji Kullanımı',
            explanation: 'Teknoloji ile ilgili cihazları kullanırken "use" (kullanmak) fiili kullanılır.',
            examples: ['I use my computer for work.', 'She uses her phone every day.', 'We use the internet for learning.'],
            exampleTranslations: ['Bilgisayarımı iş için kullanırım.', 'Telefonunu her gün kullanır.', 'İnterneti öğrenmek için kullanırız.'],
          ),
        ],
        questions: [
          Question(prompt: '"Keyboard" ne demektir?', type: QuestionType.multipleChoice, options: ['Fare', 'Klavye', 'Ekran', 'Yazıcı'], correctAnswerIndex: 1, explanation: '"Keyboard" klavye demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ the internet." (kullanmak)', type: QuestionType.fillInBlank, options: ['use', 'uses', 'using', 'used'], correctAnswerIndex: 0, explanation: '"I" ile "use" kullanılır.'),
        ],
      ),

      // ==================== DERS 30 ====================
      Lesson(
        id: 30,
        title: 'İletişim Araçları',
        description: 'İletişim ile ilgili temel kelimeler',
        level: 'A1',
        icon: '📱',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Message', translation: 'Mesaj', exampleSentence: 'I send a message.', exampleTranslation: 'Mesaj gönderirim.'),
          VocabularyItem(word: 'Call', translation: 'Arama', exampleSentence: 'I call my mother.', exampleTranslation: 'Annemi ararım.'),
          VocabularyItem(word: 'Email', translation: 'E-posta', exampleSentence: 'I check my email.', exampleTranslation: 'E-postamı kontrol ederim.'),
          VocabularyItem(word: 'Chat', translation: 'Sohbet', exampleSentence: 'We chat online.', exampleTranslation: 'Çevrimiçi sohbet ederiz.'),
          VocabularyItem(word: 'Video call', translation: 'Görüntülü arama', exampleSentence: 'I make a video call.', exampleTranslation: 'Görüntülü arama yaparım.'),
          VocabularyItem(word: 'Social media', translation: 'Sosyal medya', exampleSentence: 'I use social media.', exampleTranslation: 'Sosyal medya kullanırım.'),
          VocabularyItem(word: 'Text', translation: 'Kısa mesaj', exampleSentence: 'I send a text.', exampleTranslation: 'Kısa mesaj gönderirim.'),
          VocabularyItem(word: 'Contact', translation: 'Kişi, iletişim', exampleSentence: 'I add a new contact.', exampleTranslation: 'Yeni bir kişi eklerim.'),
        ],
        content: [
          ContentSection(
            title: 'İletişim Fiilleri',
            explanation: 'İletişim kurarken "send" (göndermek), "call" (aramak), "write" (yazmak) fiilleri kullanılır.',
            examples: ['I send a message to my friend.', 'She calls her sister.', 'We write emails at work.'],
            exampleTranslations: ['Arkadaşıma mesaj gönderirim.', 'Kız kardeşini arar.', 'İşte e-posta yazarız.'],
          ),
        ],
        questions: [
          Question(prompt: '"Call" ne demektir?', type: QuestionType.multipleChoice, options: ['Mesaj', 'Arama', 'E-posta', 'Sohbet'], correctAnswerIndex: 1, explanation: '"Call" arama demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ a message." (göndermek)', type: QuestionType.fillInBlank, options: ['send', 'sends', 'sending', 'sent'], correctAnswerIndex: 0, explanation: '"I" ile "send" kullanılır.'),
        ],
      ),

      // ==================== DERS 31 ====================
      Lesson(
        id: 31,
        title: 'Şehir ve Mekanlar',
        description: 'Şehirde bulunan yerleri öğrenin',
        level: 'A1',
        icon: '🏙️',
        xpReward: 65,
        vocabulary: [
          VocabularyItem(word: 'Bank', translation: 'Banka', exampleSentence: 'The bank is open.', exampleTranslation: 'Banka açık.'),
          VocabularyItem(word: 'Hospital', translation: 'Hastane', exampleSentence: 'The hospital is big.', exampleTranslation: 'Hastane büyük.'),
          VocabularyItem(word: 'School', translation: 'Okul', exampleSentence: 'The school is near.', exampleTranslation: 'Okul yakın.'),
          VocabularyItem(word: 'Park', translation: 'Park', exampleSentence: 'The park is beautiful.', exampleTranslation: 'Park güzel.'),
          VocabularyItem(word: 'Supermarket', translation: 'Süpermarket', exampleSentence: 'The supermarket is busy.', exampleTranslation: 'Süpermarket kalabalık.'),
          VocabularyItem(word: 'Restaurant', translation: 'Restoran', exampleSentence: 'The restaurant is good.', exampleTranslation: 'Restoran iyi.'),
          VocabularyItem(word: 'Post office', translation: 'Postane', exampleSentence: 'The post office is closed.', exampleTranslation: 'Postane kapalı.'),
          VocabularyItem(word: 'Museum', translation: 'Müze', exampleSentence: 'The museum is interesting.', exampleTranslation: 'Müze ilginç.'),
        ],
        content: [
          ContentSection(
            title: 'Mekanları Sorma',
            explanation: 'Bir mekanın yerini sormak için "Where is the...?" kalıbı kullanılır.',
            examples: ['Where is the bank?', 'Where is the nearest hospital?', 'Is there a park near here?'],
            exampleTranslations: ['Banka nerede?', 'En yakın hastane nerede?', 'Buraya yakın bir park var mı?'],
          ),
        ],
        questions: [
          Question(prompt: '"Hospital" ne demektir?', type: QuestionType.multipleChoice, options: ['Okul', 'Hastane', 'Park', 'Banka'], correctAnswerIndex: 1, explanation: '"Hospital" hastane demektir.'),
          Question(prompt: 'Boşluğu doldurun: "Where is the ___?" (banka)', type: QuestionType.fillInBlank, options: ['park', 'bank', 'museum', 'restaurant'], correctAnswerIndex: 1, explanation: 'Banka "bank" demektir.'),
        ],
      ),

      // ==================== DERS 32 ====================
      Lesson(
        id: 32,
        title: 'Ulaşım Araçları',
        description: 'Toplu taşıma ve araçları öğrenin',
        level: 'A1',
        icon: '🚗',
        xpReward: 65,
        vocabulary: [
          VocabularyItem(word: 'Car', translation: 'Araba', exampleSentence: 'I drive a car.', exampleTranslation: 'Araba kullanırım.'),
          VocabularyItem(word: 'Bus', translation: 'Otobüs', exampleSentence: 'I take the bus.', exampleTranslation: 'Otobüse binerim.'),
          VocabularyItem(word: 'Train', translation: 'Tren', exampleSentence: 'The train is fast.', exampleTranslation: 'Tren hızlıdır.'),
          VocabularyItem(word: 'Plane', translation: 'Uçak', exampleSentence: 'The plane is in the air.', exampleTranslation: 'Uçak havada.'),
          VocabularyItem(word: 'Bicycle', translation: 'Bisiklet', exampleSentence: 'I ride a bicycle.', exampleTranslation: 'Bisiklete binerim.'),
          VocabularyItem(word: 'Taxi', translation: 'Taksi', exampleSentence: 'We take a taxi.', exampleTranslation: 'Taksiye bineriz.'),
          VocabularyItem(word: 'Metro', translation: 'Metro', exampleSentence: 'The metro is crowded.', exampleTranslation: 'Metro kalabalık.'),
          VocabularyItem(word: 'Walk', translation: 'Yürümek', exampleSentence: 'I walk to work.', exampleTranslation: 'İşe yürürüm.'),
        ],
        content: [
          ContentSection(
            title: 'Ulaşım Fiilleri',
            explanation: 'Araçlarla ilgili fiiller: "drive" (araba kullanmak), "ride" (bisiklete binmek), "take" (otobüs/tren/taksi kullanmak).',
            examples: ['I drive to work.', 'She rides a bicycle.', 'We take the bus to school.'],
            exampleTranslations: ['İşe arabayla giderim.', 'Bisiklete biner.', 'Okula otobüsle gideriz.'],
          ),
        ],
        questions: [
          Question(prompt: '"Bus" ne demektir?', type: QuestionType.multipleChoice, options: ['Araba', 'Otobüs', 'Tren', 'Uçak'], correctAnswerIndex: 1, explanation: '"Bus" otobüs demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I ___ a bicycle." (binmek)', type: QuestionType.fillInBlank, options: ['drive', 'ride', 'fly', 'take'], correctAnswerIndex: 1, explanation: 'Bisiklete binmek için "ride" kullanılır.'),
        ],
      ),

      // ==================== DERS 33 ====================
      Lesson(
        id: 33,
        title: 'Hayvanlar',
        description: 'Yaygın hayvan isimlerini öğrenin',
        level: 'A1',
        icon: '🐈',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Cat', translation: 'Kedi', exampleSentence: 'The cat is sleeping.', exampleTranslation: 'Kedi uyuyor.'),
          VocabularyItem(word: 'Dog', translation: 'Köpek', exampleSentence: 'The dog is barking.', exampleTranslation: 'Köpek havlıyor.'),
          VocabularyItem(word: 'Bird', translation: 'Kuş', exampleSentence: 'The bird is singing.', exampleTranslation: 'Kuş ötüyor.'),
          VocabularyItem(word: 'Fish', translation: 'Balık', exampleSentence: 'The fish is swimming.', exampleTranslation: 'Balık yüzüyor.'),
          VocabularyItem(word: 'Horse', translation: 'At', exampleSentence: 'The horse is running.', exampleTranslation: 'At koşuyor.'),
          VocabularyItem(word: 'Cow', translation: 'İnek', exampleSentence: 'The cow is eating grass.', exampleTranslation: 'İnek ot yiyor.'),
          VocabularyItem(word: 'Sheep', translation: 'Koyun', exampleSentence: 'The sheep is white.', exampleTranslation: 'Koyun beyaz.'),
          VocabularyItem(word: 'Rabbit', translation: 'Tavşan', exampleSentence: 'The rabbit is cute.', exampleTranslation: 'Tavşan sevimli.'),
        ],
        content: [
          ContentSection(
            title: 'Hayvanları Tanıma',
            explanation: 'Hayvanlar sayılabilir isimlerdir. Evcil hayvanlar için "pet" kelimesi kullanılır.',
            examples: ['I have a cat.', 'She has a dog.', 'We see birds in the park.'],
            exampleTranslations: ['Bir kedim var.', 'Bir köpeği var.', 'Parkta kuşlar görürüz.'],
          ),
        ],
        questions: [
          Question(prompt: '"Dog" ne demektir?', type: QuestionType.multipleChoice, options: ['Kedi', 'Köpek', 'Kuş', 'At'], correctAnswerIndex: 1, explanation: '"Dog" köpek demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I have a ___." (kedi)', type: QuestionType.fillInBlank, options: ['dog', 'cat', 'bird', 'fish'], correctAnswerIndex: 1, explanation: 'Kedi "cat" demektir.'),
        ],
      ),

      // ==================== DERS 34 ====================
      Lesson(
        id: 34,
        title: 'Doğa ve Çevre',
        description: 'Doğa ile ilgili kelimeleri öğrenin',
        level: 'A1',
        icon: '🌳',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Tree', translation: 'Ağaç', exampleSentence: 'The tree is tall.', exampleTranslation: 'Ağaç uzun.'),
          VocabularyItem(word: 'Flower', translation: 'Çiçek', exampleSentence: 'The flower is beautiful.', exampleTranslation: 'Çiçek güzel.'),
          VocabularyItem(word: 'Mountain', translation: 'Dağ', exampleSentence: 'The mountain is high.', exampleTranslation: 'Dağ yüksek.'),
          VocabularyItem(word: 'River', translation: 'Nehir', exampleSentence: 'The river is long.', exampleTranslation: 'Nehir uzun.'),
          VocabularyItem(word: 'Sea', translation: 'Deniz', exampleSentence: 'The sea is blue.', exampleTranslation: 'Deniz mavi.'),
          VocabularyItem(word: 'Sky', translation: 'Gökyüzü', exampleSentence: 'The sky is clear.', exampleTranslation: 'Gökyüzü açık.'),
          VocabularyItem(word: 'Sun', translation: 'Güneş', exampleSentence: 'The sun is bright.', exampleTranslation: 'Güneş parlak.'),
          VocabularyItem(word: 'Rain', translation: 'Yağmur', exampleSentence: 'The rain is heavy.', exampleTranslation: 'Yağmur şiddetli.'),
        ],
        content: [
          ContentSection(
            title: 'Doğa Terimleri',
            explanation: 'Doğa ile ilgili kelimeler genellikle sayılamaz veya sayılabilir olabilir. "Tree" sayılabilir, "rain" sayılamaz.',
            examples: ['There are many trees.', 'The sea is very blue.', 'I love the sun.'],
            exampleTranslations: ['Çok ağaç var.', 'Deniz çok mavi.', 'Güneşi severim.'],
          ),
        ],
        questions: [
          Question(prompt: '"Mountain" ne demektir?', type: QuestionType.multipleChoice, options: ['Nehir', 'Dağ', 'Deniz', 'Göl'], correctAnswerIndex: 1, explanation: '"Mountain" dağ demektir.'),
          Question(prompt: 'Boşluğu doldurun: "The ___ is blue." (gökyüzü)', type: QuestionType.fillInBlank, options: ['sky', 'sea', 'sun', 'tree'], correctAnswerIndex: 0, explanation: 'Gökyüzü "sky" demektir.'),
        ],
      ),

      // ==================== DERS 35 ====================
      Lesson(
        id: 35,
        title: 'Restoran ve Yemek Siparişi',
        description: 'Restoranda yemek siparişi vermeyi öğrenin',
        level: 'A1',
        icon: '🍽️',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Menu', translation: 'Menü', exampleSentence: 'Can I see the menu?', exampleTranslation: 'Menüyü görebilir miyim?'),
          VocabularyItem(word: 'Order', translation: 'Sipariş', exampleSentence: 'I want to order.', exampleTranslation: 'Sipariş vermek istiyorum.'),
          VocabularyItem(word: 'Waiter', translation: 'Garson', exampleSentence: 'The waiter is friendly.', exampleTranslation: 'Garson arkadaş canlısı.'),
          VocabularyItem(word: 'Bill', translation: 'Hesap', exampleSentence: 'Can I have the bill?', exampleTranslation: 'Hesabı alabilir miyim?'),
          VocabularyItem(word: 'Delicious', translation: 'Lezzetli', exampleSentence: 'The food is delicious.', exampleTranslation: 'Yemek lezzetli.'),
          VocabularyItem(word: 'Hungry', translation: 'Aç', exampleSentence: 'I am hungry.', exampleTranslation: 'Açım.'),
          VocabularyItem(word: 'Thirsty', translation: 'Susuz', exampleSentence: 'I am thirsty.', exampleTranslation: 'Susadım.'),
          VocabularyItem(word: 'Tip', translation: 'Bahşiş', exampleSentence: 'I leave a tip.', exampleTranslation: 'Bahşiş bırakırım.'),
        ],
        content: [
          ContentSection(
            title: 'Sipariş Verme',
            explanation: 'Restoranda sipariş verirken "I would like..." veya "Can I have..." kalıpları kullanılır.',
            examples: ['I would like a pizza, please.', 'Can I have a glass of water?', 'The food is delicious.'],
            exampleTranslations: ['Bir pizza istiyorum, lütfen.', 'Bir bardak su alabilir miyim?', 'Yemek lezzetli.'],
          ),
        ],
        questions: [
          Question(prompt: '"Menu" ne demektir?', type: QuestionType.multipleChoice, options: ['Yemek', 'Menü', 'Garson', 'Hesap'], correctAnswerIndex: 1, explanation: '"Menu" menü demektir.'),
          Question(prompt: 'Boşluğu doldurun: "Can I have the ___?" (hesap)', type: QuestionType.fillInBlank, options: ['menu', 'bill', 'tip', 'waiter'], correctAnswerIndex: 1, explanation: 'Hesap "bill" demektir.'),
        ],
      ),

      // ==================== DERS 36 ====================
      Lesson(
        id: 36,
        title: 'Otel ve Konaklama',
        description: 'Otel rezervasyonu ve konaklama ifadeleri',
        level: 'A1',
        icon: '🏨',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Room', translation: 'Oda', exampleSentence: 'I need a room.', exampleTranslation: 'Bir odaya ihtiyacım var.'),
          VocabularyItem(word: 'Reservation', translation: 'Rezervasyon', exampleSentence: 'I have a reservation.', exampleTranslation: 'Rezervasyonum var.'),
          VocabularyItem(word: 'Key', translation: 'Anahtar', exampleSentence: 'The key is here.', exampleTranslation: 'Anahtar burada.'),
          VocabularyItem(word: 'Reception', translation: 'Resepsiyon', exampleSentence: 'The reception is open.', exampleTranslation: 'Resepsiyon açık.'),
          VocabularyItem(word: 'Luggage', translation: 'Bagaj', exampleSentence: 'My luggage is heavy.', exampleTranslation: 'Bagajım ağır.'),
          VocabularyItem(word: 'Check-in', translation: 'Giriş yapma', exampleSentence: 'Check-in is at 2 PM.', exampleTranslation: 'Giriş saati 14:00.'),
          VocabularyItem(word: 'Check-out', translation: 'Çıkış yapma', exampleSentence: 'Check-out is at 12 PM.', exampleTranslation: 'Çıkış saati 12:00.'),
          VocabularyItem(word: 'Breakfast', translation: 'Kahvaltı', exampleSentence: 'Breakfast is included.', exampleTranslation: 'Kahvaltı dahildir.'),
        ],
        content: [
          ContentSection(
            title: 'Otel Rezervasyonu',
            explanation: 'Otel rezervasyonu yaparken "I would like to book a room" veya "I have a reservation" ifadeleri kullanılır.',
            examples: ['I would like to book a room.', 'I have a reservation under the name Smith.', 'What time is check-in?'],
            exampleTranslations: ['Bir oda rezervasyonu yapmak istiyorum.', 'Smith adına rezervasyonum var.', 'Giriş saati kaç?'],
          ),
        ],
        questions: [
          Question(prompt: '"Reservation" ne demektir?', type: QuestionType.multipleChoice, options: ['Oda', 'Rezervasyon', 'Anahtar', 'Bagaj'], correctAnswerIndex: 1, explanation: '"Reservation" rezervasyon demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I have a ___." (rezervasyon)', type: QuestionType.fillInBlank, options: ['room', 'key', 'reservation', 'luggage'], correctAnswerIndex: 2, explanation: 'Rezervasyon "reservation" demektir.'),
        ],
      ),

      // ==================== DERS 37 ====================
      Lesson(
        id: 37,
        title: 'Seyahat ve Turizm',
        description: 'Seyahat ederken kullanılan ifadeler',
        level: 'A1',
        icon: '✈️',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Ticket', translation: 'Bilet', exampleSentence: 'I have a ticket.', exampleTranslation: 'Bir biletim var.'),
          VocabularyItem(word: 'Airport', translation: 'Havalimanı', exampleSentence: 'The airport is far.', exampleTranslation: 'Havalimanı uzak.'),
          VocabularyItem(word: 'Passport', translation: 'Pasaport', exampleSentence: 'My passport is valid.', exampleTranslation: 'Pasaportum geçerli.'),
          VocabularyItem(word: 'Suitcase', translation: 'Valiz', exampleSentence: 'My suitcase is big.', exampleTranslation: 'Valizim büyük.'),
          VocabularyItem(word: 'Gate', translation: 'Kapı (uçuş)', exampleSentence: 'The gate is number 5.', exampleTranslation: 'Kapı numarası 5.'),
          VocabularyItem(word: 'Delay', translation: 'Gecikme', exampleSentence: 'The flight has a delay.', exampleTranslation: 'Uçuşta gecikme var.'),
          VocabularyItem(word: 'Arrive', translation: 'Varmak', exampleSentence: 'We arrive at 3 PM.', exampleTranslation: 'Saat 15:00\'te varırız.'),
          VocabularyItem(word: 'Depart', translation: 'Kalkmak', exampleSentence: 'The plane departs at 9 AM.', exampleTranslation: 'Uçak saat 09:00\'da kalkar.'),
        ],
        content: [
          ContentSection(
            title: 'Havalimanında',
            explanation: 'Havalimanında kullanılan temel ifadeleri öğrenin.',
            examples: ['Where is the check-in counter?', 'My flight is delayed.', 'I need a window seat.'],
            exampleTranslations: ['Check-in kontuarı nerede?', 'Uçuşum gecikti.', 'Cam kenarı bir koltuk istiyorum.'],
          ),
        ],
        questions: [
          Question(prompt: '"Passport" ne demektir?', type: QuestionType.multipleChoice, options: ['Bilet', 'Pasaport', 'Valiz', 'Kapı'], correctAnswerIndex: 1, explanation: '"Passport" pasaport demektir.'),
          Question(prompt: 'Boşluğu doldurun: "The flight has a ___." (gecikme)', type: QuestionType.fillInBlank, options: ['gate', 'delay', 'ticket', 'suitcase'], correctAnswerIndex: 1, explanation: 'Gecikme "delay" demektir.'),
        ],
      ),

      // ==================== DERS 38 ====================
      Lesson(
        id: 38,
        title: 'Sağlık ve Hastalık',
        description: 'Hastalık belirtilerini ifade etme',
        level: 'A1',
        icon: '🤒',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Headache', translation: 'Baş ağrısı', exampleSentence: 'I have a headache.', exampleTranslation: 'Başım ağrıyor.'),
          VocabularyItem(word: 'Fever', translation: 'Ateş', exampleSentence: 'I have a fever.', exampleTranslation: 'Ateşim var.'),
          VocabularyItem(word: 'Cough', translation: 'Öksürük', exampleSentence: 'I have a cough.', exampleTranslation: 'Öksürüğüm var.'),
          VocabularyItem(word: 'Cold', translation: 'Soğuk algınlığı', exampleSentence: 'I have a cold.', exampleTranslation: 'Soğuk algınlığım var.'),
          VocabularyItem(word: 'Pain', translation: 'Ağrı', exampleSentence: 'I have a pain in my back.', exampleTranslation: 'Sırtımda ağrı var.'),
          VocabularyItem(word: 'Doctor', translation: 'Doktor', exampleSentence: 'I need to see a doctor.', exampleTranslation: 'Doktora görünmem gerekiyor.'),
          VocabularyItem(word: 'Medicine', translation: 'İlaç', exampleSentence: 'I take medicine.', exampleTranslation: 'İlaç alırım.'),
          VocabularyItem(word: 'Rest', translation: 'Dinlenme', exampleSentence: 'I need rest.', exampleTranslation: 'Dinlenmeye ihtiyacım var.'),
        ],
        content: [
          ContentSection(
            title: 'Hastalık Belirtileri',
            explanation: 'Hastalık belirtilerini ifade ederken "I have..." kalıbı kullanılır.',
            examples: ['I have a headache.', 'She has a fever.', 'He has a cough.'],
            exampleTranslations: ['Başım ağrıyor.', 'Ateşi var.', 'Öksürüğü var.'],
          ),
        ],
        questions: [
          Question(prompt: '"Headache" ne demektir?', type: QuestionType.multipleChoice, options: ['Mide ağrısı', 'Baş ağrısı', 'Ateş', 'Öksürük'], correctAnswerIndex: 1, explanation: '"Headache" baş ağrısı demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I have a ___." (ateş)', type: QuestionType.fillInBlank, options: ['headache', 'fever', 'cough', 'cold'], correctAnswerIndex: 1, explanation: 'Ateş "fever" demektir.'),
        ],
      ),

      // ==================== DERS 39 ====================
      Lesson(
        id: 39,
        title: 'Eczane ve İlaçlar',
        description: 'Eczanede kullanılan ifadeler',
        level: 'A1',
        icon: '💊',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Pharmacy', translation: 'Eczane', exampleSentence: 'Where is the pharmacy?', exampleTranslation: 'Eczane nerede?'),
          VocabularyItem(word: 'Prescription', translation: 'Reçete', exampleSentence: 'I need a prescription.', exampleTranslation: 'Reçeteye ihtiyacım var.'),
          VocabularyItem(word: 'Pill', translation: 'Hap', exampleSentence: 'Take one pill daily.', exampleTranslation: 'Günde bir hap alın.'),
          VocabularyItem(word: 'Syrup', translation: 'Şurup', exampleSentence: 'The syrup is for cough.', exampleTranslation: 'Şurup öksürük için.'),
          VocabularyItem(word: 'Cream', translation: 'Krem', exampleSentence: 'Apply the cream twice a day.', exampleTranslation: 'Kremi günde iki kez uygulayın.'),
          VocabularyItem(word: 'Painkiller', translation: 'Ağrı kesici', exampleSentence: 'I need a painkiller.', exampleTranslation: 'Ağrı kesiciye ihtiyacım var.'),
          VocabularyItem(word: 'Pharmacist', translation: 'Eczacı', exampleSentence: 'The pharmacist is helpful.', exampleTranslation: 'Eczacı yardımsever.'),
          VocabularyItem(word: 'Dose', translation: 'Doz', exampleSentence: 'The dose is one pill.', exampleTranslation: 'Doz bir hap.'),
        ],
        content: [
          ContentSection(
            title: 'Eczanede Sorma',
            explanation: 'Eczanede ilaç ararken "Do you have...?" veya "I need..." ifadeleri kullanılır.',
            examples: ['Do you have something for a headache?', 'I need a painkiller.', 'Can I see the pharmacist?'],
            exampleTranslations: ['Baş ağrısı için bir şey var mı?', 'Ağrı kesiciye ihtiyacım var.', 'Eczacıyı görebilir miyim?'],
          ),
        ],
        questions: [
          Question(prompt: '"Pharmacy" ne demektir?', type: QuestionType.multipleChoice, options: ['Hastane', 'Eczane', 'Klinik', 'Laboratuvar'], correctAnswerIndex: 1, explanation: '"Pharmacy" eczane demektir.'),
          Question(prompt: 'Boşluğu doldurun: "I need a ___." (ağrı kesici)', type: QuestionType.fillInBlank, options: ['pill', 'painkiller', 'syrup', 'cream'], correctAnswerIndex: 1, explanation: 'Ağrı kesici "painkiller" demektir.'),
        ],
      ),

      // ==================== DERS 40 ====================
      Lesson(
        id: 40,
        title: 'Acil Durumlar',
        description: 'Acil durumlarda kullanılan ifadeler',
        level: 'A1',
        icon: '🚨',
        xpReward: 75,
        vocabulary: [
          VocabularyItem(word: 'Emergency', translation: 'Acil durum', exampleSentence: 'This is an emergency.', exampleTranslation: 'Bu bir acil durum.'),
          VocabularyItem(word: 'Help', translation: 'Yardım', exampleSentence: 'I need help.', exampleTranslation: 'Yardıma ihtiyacım var.'),
          VocabularyItem(word: 'Police', translation: 'Polis', exampleSentence: 'Call the police!', exampleTranslation: 'Polisi arayın!'),
          VocabularyItem(word: 'Ambulance', translation: 'Ambulans', exampleSentence: 'Call an ambulance!', exampleTranslation: 'Ambulans çağırın!'),
          VocabularyItem(word: 'Fire', translation: 'Yangın', exampleSentence: 'There is a fire!', exampleTranslation: 'Yangın var!'),
          VocabularyItem(word: 'Danger', translation: 'Tehlike', exampleSentence: 'There is danger.', exampleTranslation: 'Tehlike var.'),
          VocabularyItem(word: 'Accident', translation: 'Kaza', exampleSentence: 'There was an accident.', exampleTranslation: 'Bir kaza oldu.'),
          VocabularyItem(word: 'Emergency exit', translation: 'Acil çıkış', exampleSentence: 'Where is the emergency exit?', exampleTranslation: 'Acil çıkış nerede?'),
        ],
        content: [
          ContentSection(
            title: 'Acil Durum İfadeleri',
            explanation: 'Acil durumlarda yardım istemek için kısa ve net ifadeler kullanılır.',
            examples: ['Help!', 'Call the police!', 'I need an ambulance.'],
            exampleTranslations: ['İmdat!', 'Polisi arayın!', 'Ambulansa ihtiyacım var.'],
          ),
        ],
        questions: [
          Question(prompt: '"Emergency" ne demektir?', type: QuestionType.multipleChoice, options: ['Tehlike', 'Acil durum', 'Kaza', 'Yardım'], correctAnswerIndex: 1, explanation: '"Emergency" acil durum demektir.'),
          Question(prompt: 'Boşluğu doldurun: "Call the ___!" (polis)', type: QuestionType.fillInBlank, options: ['police', 'fire', 'ambulance', 'help'], correctAnswerIndex: 0, explanation: 'Polis "police" demektir.'),
        ],
      ),
    ];
  }
}