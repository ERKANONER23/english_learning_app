import '../models/lesson.dart';
import '../models/vocabulary_item.dart';
import '../models/content_section.dart';
import '../models/question.dart';

class LessonsData {
  static List<Lesson> getLessons() {
    return [
      // DERS 1: Selamlaşma ve Tanışma
      Lesson(
        id: 1,
        title: 'Selamlaşma ve Tanışma',
        description: 'Günlük selamlaşma ifadeleri ve kendini tanıtma',
        level: 'A1',
        icon: '👋',
        xpReward: 50,
        vocabulary: [
          VocabularyItem(
            word: 'Hello',
            translation: 'Merhaba',
            exampleSentence: 'Hello! How are you?',
            exampleTranslation: 'Merhaba! Nasılsın?',
          ),
          VocabularyItem(
            word: 'Good morning',
            translation: 'Günaydın',
            exampleSentence: 'Good morning, teacher!',
            exampleTranslation: 'Günaydın, öğretmenim!',
          ),
          VocabularyItem(
            word: 'Name',
            translation: 'İsim',
            exampleSentence: 'My name is John.',
            exampleTranslation: 'Benim adım John.',
          ),
          VocabularyItem(
            word: 'Nice to meet you',
            translation: 'Tanıştığımıza memnun oldum',
            exampleSentence: 'Nice to meet you, Sarah.',
            exampleTranslation: 'Tanıştığımıza memnun oldum, Sarah.',
          ),
          VocabularyItem(
            word: 'Goodbye',
            translation: 'Hoşça kal',
            exampleSentence: 'Goodbye! See you later.',
            exampleTranslation: 'Hoşça kal! Sonra görüşürüz.',
          ),
        ],
        content: [
          ContentSection(
            title: 'Temel Selamlaşma',
            explanation: 'İngilizcede günün saatine göre farklı selamlaşma ifadeleri kullanılır.',
            examples: [
              'Hello!',
              'Good morning!',
              'Good afternoon!',
              'Good evening!',
            ],
            exampleTranslations: [
              'Merhaba!',
              'Günaydın!',
              'İyi günler! (öğleden sonra)',
              'İyi akşamlar!',
            ],
          ),
          ContentSection(
            title: 'Kendini Tanıtma',
            explanation: 'Kendinizi tanıtırken "My name is..." veya "I am..." kalıplarını kullanabilirsiniz.',
            examples: [
              'My name is Ayşe.',
              'I am Ahmet.',
              'What is your name?',
              'Nice to meet you.',
            ],
            exampleTranslations: [
              'Benim adım Ayşe.',
              'Ben Ahmet.',
              'Senin adın ne?',
              'Tanıştığımıza memnun oldum.',
            ],
          ),
        ],
        questions: [
          Question(
            prompt: '"Good morning" ne anlama gelir?',
            type: QuestionType.multipleChoice,
            options: ['İyi geceler', 'Günaydın', 'İyi akşamlar', 'Hoşça kal'],
            correctAnswerIndex: 1,
            explanation: '"Good morning" sabah saatlerinde kullanılan bir selamlamadır.',
          ),
          Question(
            prompt: 'Aşağıdakilerden hangisi "tanıştığımıza memnun oldum" anlamına gelir?',
            type: QuestionType.multipleChoice,
            options: ['Goodbye', 'Hello', 'Nice to meet you', 'Good night'],
            correctAnswerIndex: 2,
            explanation: '"Nice to meet you" tanışma sırasında kullanılır.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "___ name is Ali."',
            type: QuestionType.fillInBlank,
            options: ['I', 'My', 'Me', 'Mine'],
            correctAnswerIndex: 1,
            explanation: 'İyelik sıfatı "my" kullanılır: "My name is Ali."',
          ),
          Question(
            prompt: '"Hello" resmi olmayan bir selamlamadır.',
            type: QuestionType.trueFalse,
            options: ['Doğru', 'Yanlış'],
            correctAnswerIndex: 0,
            explanation: '"Hello" her ortamda kullanılabilen genel bir selamlamadır.',
          ),
        ],
      ),

      // DERS 2: Sayılar 1-10
      Lesson(
        id: 2,
        title: 'Sayılar (1-10)',
        description: '1\'den 10\'a kadar sayıları öğren',
        level: 'A1',
        icon: '🔢',
        xpReward: 50,
        vocabulary: [
          VocabularyItem(word: 'One', translation: 'Bir', exampleSentence: 'I have one apple.', exampleTranslation: 'Bir elmam var.'),
          VocabularyItem(word: 'Two', translation: 'İki', exampleSentence: 'Two cats are playing.', exampleTranslation: 'İki kedi oynuyor.'),
          VocabularyItem(word: 'Three', translation: 'Üç', exampleSentence: 'I see three birds.', exampleTranslation: 'Üç kuş görüyorum.'),
          VocabularyItem(word: 'Four', translation: 'Dört', exampleSentence: 'There are four chairs.', exampleTranslation: 'Dört sandalye var.'),
          VocabularyItem(word: 'Five', translation: 'Beş', exampleSentence: 'I have five fingers.', exampleTranslation: 'Beş parmağım var.'),
          VocabularyItem(word: 'Six', translation: 'Altı', exampleSentence: 'Six eggs are in the box.', exampleTranslation: 'Kutuda altı yumurta var.'),
          VocabularyItem(word: 'Seven', translation: 'Yedi', exampleSentence: 'There are seven days in a week.', exampleTranslation: 'Bir haftada yedi gün vardır.'),
          VocabularyItem(word: 'Eight', translation: 'Sekiz', exampleSentence: 'Eight students are here.', exampleTranslation: 'Sekiz öğrenci burada.'),
          VocabularyItem(word: 'Nine', translation: 'Dokuz', exampleSentence: 'Nine birds are flying.', exampleTranslation: 'Dokuz kuş uçuyor.'),
          VocabularyItem(word: 'Ten', translation: 'On', exampleSentence: 'I can count to ten.', exampleTranslation: 'Ona kadar sayabilirim.'),
        ],
        content: [
          ContentSection(
            title: '1\'den 10\'a Kadar Sayılar',
            explanation: 'Sayılar nesneleri saymak için kullanılır. Telaffuzlarına dikkat edin.',
            examples: ['one, two, three, four, five', 'six, seven, eight, nine, ten'],
            exampleTranslations: ['bir, iki, üç, dört, beş', 'altı, yedi, sekiz, dokuz, on'],
          ),
          ContentSection(
            title: 'Sayılarla Cümle Kurma',
            explanation: 'Sayıları nesnelerle birlikte kullanırken önce sayı gelir: "two apples".',
            examples: ['I have two books.', 'She has three cats.', 'There are five students.'],
            exampleTranslations: ['İki kitabım var.', 'Onun üç kedisi var.', 'Beş öğrenci var.'],
          ),
        ],
        questions: [
          Question(
            prompt: '3 sayısının İngilizcesi nedir?',
            type: QuestionType.multipleChoice,
            options: ['Two', 'Three', 'Four', 'Five'],
            correctAnswerIndex: 1,
            explanation: '3 sayısı "three" olarak yazılır.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "There are ___ days in a week."',
            type: QuestionType.fillInBlank,
            options: ['six', 'seven', 'eight', 'nine'],
            correctAnswerIndex: 1,
            explanation: 'Bir haftada yedi gün vardır: seven.',
          ),
          Question(
            prompt: '"Ten" sayısı kaçtır?',
            type: QuestionType.multipleChoice,
            options: ['8', '9', '10', '11'],
            correctAnswerIndex: 2,
            explanation: '"Ten" 10 demektir.',
          ),
        ],
      ),

      // DERS 3: Renkler
      Lesson(
        id: 3,
        title: 'Renkler',
        description: 'Temel renk isimlerini öğren',
        level: 'A1',
        icon: '🎨',
        xpReward: 50,
        vocabulary: [
          VocabularyItem(word: 'Red', translation: 'Kırmızı', exampleSentence: 'The apple is red.', exampleTranslation: 'Elma kırmızıdır.'),
          VocabularyItem(word: 'Blue', translation: 'Mavi', exampleSentence: 'The sky is blue.', exampleTranslation: 'Gökyüzü mavidir.'),
          VocabularyItem(word: 'Green', translation: 'Yeşil', exampleSentence: 'The grass is green.', exampleTranslation: 'Çimen yeşildir.'),
          VocabularyItem(word: 'Yellow', translation: 'Sarı', exampleSentence: 'The banana is yellow.', exampleTranslation: 'Muz sarıdır.'),
          VocabularyItem(word: 'Black', translation: 'Siyah', exampleSentence: 'The cat is black.', exampleTranslation: 'Kedi siyahtır.'),
          VocabularyItem(word: 'White', translation: 'Beyaz', exampleSentence: 'The snow is white.', exampleTranslation: 'Kar beyazdır.'),
        ],
        content: [
          ContentSection(
            title: 'Renkleri Kullanma',
            explanation: 'Renkler genellikle "is" fiili ile birlikte kullanılır: "The car is blue."',
            examples: ['The sun is yellow.', 'My bag is red.', 'The door is black.'],
            exampleTranslations: ['Güneş sarıdır.', 'Çantam kırmızıdır.', 'Kapı siyahtır.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Green" hangi renktir?',
            type: QuestionType.multipleChoice,
            options: ['Kırmızı', 'Yeşil', 'Mavi', 'Sarı'],
            correctAnswerIndex: 1,
            explanation: '"Green" yeşil demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "The sky is ___."',
            type: QuestionType.fillInBlank,
            options: ['red', 'blue', 'green', 'black'],
            correctAnswerIndex: 1,
            explanation: 'Gökyüzü mavidir: blue.',
          ),
        ],
      ),

      // DERS 4: Aile Üyeleri
      Lesson(
        id: 4,
        title: 'Aile Üyeleri',
        description: 'Aile bireylerini tanıtan kelimeler',
        level: 'A1',
        icon: '👨‍👩‍👧‍👦',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Mother', translation: 'Anne', exampleSentence: 'My mother is a doctor.', exampleTranslation: 'Annem bir doktordur.'),
          VocabularyItem(word: 'Father', translation: 'Baba', exampleSentence: 'My father is tall.', exampleTranslation: 'Babam uzun boyludur.'),
          VocabularyItem(word: 'Sister', translation: 'Kız kardeş', exampleSentence: 'I have one sister.', exampleTranslation: 'Bir kız kardeşim var.'),
          VocabularyItem(word: 'Brother', translation: 'Erkek kardeş', exampleSentence: 'My brother is 10 years old.', exampleTranslation: 'Erkek kardeşim 10 yaşında.'),
          VocabularyItem(word: 'Grandmother', translation: 'Büyükanne', exampleSentence: 'My grandmother is kind.', exampleTranslation: 'Büyükannem naziktir.'),
          VocabularyItem(word: 'Grandfather', translation: 'Büyükbaba', exampleSentence: 'My grandfather is old.', exampleTranslation: 'Büyükbabam yaşlıdır.'),
        ],
        content: [
          ContentSection(
            title: 'Aile Üyeleri',
            explanation: 'Aile üyelerini tanıtırken "my" (benim) sıfatını kullanırız.',
            examples: ['This is my mother.', 'My father is a teacher.', 'I have two sisters.'],
            exampleTranslations: ['Bu benim annem.', 'Babam bir öğretmendir.', 'İki kız kardeşim var.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Father" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Anne', 'Baba', 'Kardeş', 'Amca'],
            correctAnswerIndex: 1,
            explanation: '"Father" baba demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "My ___ is very kind." (anne)',
            type: QuestionType.fillInBlank,
            options: ['father', 'brother', 'mother', 'grandfather'],
            correctAnswerIndex: 2,
            explanation: 'Anne "mother" demektir.',
          ),
        ],
      ),

      // DERS 5: Yiyecekler
      Lesson(
        id: 5,
        title: 'Yiyecekler ve İçecekler',
        description: 'Günlük yiyecek ve içecek isimleri',
        level: 'A1',
        icon: '🍎',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Apple', translation: 'Elma', exampleSentence: 'I eat an apple.', exampleTranslation: 'Bir elma yerim.'),
          VocabularyItem(word: 'Bread', translation: 'Ekmek', exampleSentence: 'I buy bread.', exampleTranslation: 'Ekmek alırım.'),
          VocabularyItem(word: 'Water', translation: 'Su', exampleSentence: 'I drink water.', exampleTranslation: 'Su içerim.'),
          VocabularyItem(word: 'Milk', translation: 'Süt', exampleSentence: 'The milk is cold.', exampleTranslation: 'Süt soğuktur.'),
          VocabularyItem(word: 'Egg', translation: 'Yumurta', exampleSentence: 'I eat an egg for breakfast.', exampleTranslation: 'Kahvaltıda yumurta yerim.'),
          VocabularyItem(word: 'Rice', translation: 'Pirinç', exampleSentence: 'Rice is white.', exampleTranslation: 'Pirinç beyazdır.'),
        ],
        content: [
          ContentSection(
            title: 'Yiyecek ve İçecekler',
            explanation: 'Yiyeceklerden bahsederken "eat" (yemek), içeceklerden bahsederken "drink" (içmek) fiillerini kullanırız.',
            examples: ['I eat bread.', 'She drinks milk.', 'We eat eggs.'],
            exampleTranslations: ['Ekmek yerim.', 'O süt içer.', 'Yumurta yeriz.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Water" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Süt', 'Su', 'Çay', 'Meyve suyu'],
            correctAnswerIndex: 1,
            explanation: '"Water" su demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "I drink ___ every morning." (süt)',
            type: QuestionType.fillInBlank,
            options: ['water', 'milk', 'apple', 'bread'],
            correctAnswerIndex: 1,
            explanation: 'Süt "milk" demektir.',
          ),
        ],
      ),

      // DERS 6: Günlük Rutinler
      Lesson(
        id: 6,
        title: 'Günlük Rutinler',
        description: 'Günlük aktiviteleri anlatan fiiller',
        level: 'A1',
        icon: '⏰',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'Wake up', translation: 'Uyanmak', exampleSentence: 'I wake up at 7.', exampleTranslation: 'Saat 7\'de uyanırım.'),
          VocabularyItem(word: 'Eat breakfast', translation: 'Kahvaltı yapmak', exampleSentence: 'I eat breakfast at 8.', exampleTranslation: 'Saat 8\'de kahvaltı yaparım.'),
          VocabularyItem(word: 'Go to work', translation: 'İşe gitmek', exampleSentence: 'I go to work by bus.', exampleTranslation: 'İşe otobüsle giderim.'),
          VocabularyItem(word: 'Go to school', translation: 'Okula gitmek', exampleSentence: 'She goes to school.', exampleTranslation: 'O okula gider.'),
          VocabularyItem(word: 'Sleep', translation: 'Uyumak', exampleSentence: 'I sleep at 11.', exampleTranslation: 'Saat 11\'de uyurum.'),
        ],
        content: [
          ContentSection(
            title: 'Günlük Rutin Fiilleri',
            explanation: 'Günlük rutinleri anlatırken geniş zaman kullanılır. Üçüncü tekil şahısta fiile -s eklenir.',
            examples: ['I wake up early.', 'She wakes up early.', 'I go to school.', 'He goes to school.'],
            exampleTranslations: ['Erken uyanırım.', 'O erken uyanır.', 'Okula giderim.', 'O okula gider.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Wake up" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Uyumak', 'Uyanmak', 'Yemek yemek', 'Gitmek'],
            correctAnswerIndex: 1,
            explanation: '"Wake up" uyanmak demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "She ___ to school every day."',
            type: QuestionType.fillInBlank,
            options: ['go', 'goes', 'going', 'gone'],
            correctAnswerIndex: 1,
            explanation: 'Üçüncü tekil şahıs "she" ile fiile -es eklenir: goes.',
          ),
        ],
      ),

      // DERS 7: Hava Durumu
      Lesson(
        id: 7,
        title: 'Hava Durumu',
        description: 'Hava durumunu anlatan sıfatlar',
        level: 'A1',
        icon: '☀️',
        xpReward: 60,
        vocabulary: [
          VocabularyItem(word: 'Sunny', translation: 'Güneşli', exampleSentence: 'It is sunny today.', exampleTranslation: 'Bugün hava güneşli.'),
          VocabularyItem(word: 'Rainy', translation: 'Yağmurlu', exampleSentence: 'It is rainy outside.', exampleTranslation: 'Dışarısı yağmurlu.'),
          VocabularyItem(word: 'Cloudy', translation: 'Bulutlu', exampleSentence: 'The sky is cloudy.', exampleTranslation: 'Gökyüzü bulutlu.'),
          VocabularyItem(word: 'Windy', translation: 'Rüzgarlı', exampleSentence: 'It is windy at the beach.', exampleTranslation: 'Sahilde hava rüzgarlı.'),
          VocabularyItem(word: 'Cold', translation: 'Soğuk', exampleSentence: 'It is cold in winter.', exampleTranslation: 'Kışın hava soğuktur.'),
          VocabularyItem(word: 'Hot', translation: 'Sıcak', exampleSentence: 'It is hot in summer.', exampleTranslation: 'Yazın hava sıcaktır.'),
        ],
        content: [
          ContentSection(
            title: 'Hava Durumunu Anlatma',
            explanation: 'Hava durumunu anlatırken "It is..." kalıbı kullanılır.',
            examples: ['It is sunny.', 'It is cold.', 'It is windy today.'],
            exampleTranslations: ['Hava güneşli.', 'Hava soğuk.', 'Bugün hava rüzgarlı.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Rainy" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Güneşli', 'Yağmurlu', 'Karlı', 'Bulutlu'],
            correctAnswerIndex: 1,
            explanation: '"Rainy" yağmurlu demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "It is very ___ in August." (sıcak)',
            type: QuestionType.fillInBlank,
            options: ['cold', 'hot', 'windy', 'rainy'],
            correctAnswerIndex: 1,
            explanation: 'Sıcak "hot" demektir.',
          ),
        ],
      ),

      // DERS 8: Zaman ve Saatler
      Lesson(
        id: 8,
        title: 'Zaman ve Saatler',
        description: 'Saatleri söyleme ve zaman ifadeleri',
        level: 'A1',
        icon: '🕐',
        xpReward: 80,
        vocabulary: [
          VocabularyItem(word: 'Clock', translation: 'Saat (duvar saati)', exampleSentence: 'The clock is on the wall.', exampleTranslation: 'Saat duvardadır.'),
          VocabularyItem(word: 'Hour', translation: 'Saat (süre)', exampleSentence: 'One hour is 60 minutes.', exampleTranslation: 'Bir saat 60 dakikadır.'),
          VocabularyItem(word: 'Minute', translation: 'Dakika', exampleSentence: 'Wait a minute.', exampleTranslation: 'Bir dakika bekle.'),
          VocabularyItem(word: 'Morning', translation: 'Sabah', exampleSentence: 'I run in the morning.', exampleTranslation: 'Sabahları koşarım.'),
          VocabularyItem(word: 'Afternoon', translation: 'Öğleden sonra', exampleSentence: 'I work in the afternoon.', exampleTranslation: 'Öğleden sonra çalışırım.'),
          VocabularyItem(word: 'Evening', translation: 'Akşam', exampleSentence: 'We eat dinner in the evening.', exampleTranslation: 'Akşam yemeğini akşam yeriz.'),
          VocabularyItem(word: 'Night', translation: 'Gece', exampleSentence: 'The stars are visible at night.', exampleTranslation: 'Yıldızlar gece görünür.'),
        ],
        content: [
          ContentSection(
            title: 'Saat Sorma ve Söyleme',
            explanation: 'Saat sormak için "What time is it?" kullanılır. Saat söylerken "It is..." ile başlanır.',
            examples: ['What time is it?', 'It is 3 o\'clock.', 'It is half past two.', 'It is quarter past five.'],
            exampleTranslations: ['Saat kaç?', 'Saat 3.', 'Saat iki buçuk.', 'Saat beşi çeyrek geçiyor.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"What time is it?" ne anlama gelir?',
            type: QuestionType.multipleChoice,
            options: ['Bugün günlerden ne?', 'Saat kaç?', 'Hava nasıl?', 'Neredesin?'],
            correctAnswerIndex: 1,
            explanation: 'Saat sormak için kullanılır.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "It is half ___ two." (iki buçuk)',
            type: QuestionType.fillInBlank,
            options: ['past', 'to', 'at', 'in'],
            correctAnswerIndex: 0,
            explanation: '"Half past two" iki buçuk demektir.',
          ),
        ],
      ),

      // DERS 9: Yer Edatları
      Lesson(
        id: 9,
        title: 'Yer Edatları',
        description: 'Nesnelerin yerini belirten edatlar',
        level: 'A1',
        icon: '📍',
        xpReward: 70,
        vocabulary: [
          VocabularyItem(word: 'In', translation: 'İçinde', exampleSentence: 'The book is in the bag.', exampleTranslation: 'Kitap çantanın içinde.'),
          VocabularyItem(word: 'On', translation: 'Üstünde', exampleSentence: 'The cup is on the table.', exampleTranslation: 'Bardak masanın üstünde.'),
          VocabularyItem(word: 'Under', translation: 'Altında', exampleSentence: 'The cat is under the chair.', exampleTranslation: 'Kedi sandalyenin altında.'),
          VocabularyItem(word: 'Next to', translation: 'Yanında', exampleSentence: 'The bank is next to the school.', exampleTranslation: 'Banka okulun yanında.'),
          VocabularyItem(word: 'Behind', translation: 'Arkasında', exampleSentence: 'The garden is behind the house.', exampleTranslation: 'Bahçe evin arkasında.'),
          VocabularyItem(word: 'In front of', translation: 'Önünde', exampleSentence: 'The car is in front of the house.', exampleTranslation: 'Araba evin önünde.'),
        ],
        content: [
          ContentSection(
            title: 'Yer Edatları Kullanımı',
            explanation: 'Yer edatları bir nesnenin konumunu belirtir. "In" içinde, "on" üstünde, "under" altında anlamına gelir.',
            examples: ['The ball is under the table.', 'The picture is on the wall.', 'The dog is behind the door.'],
            exampleTranslations: ['Top masanın altında.', 'Resim duvarda.', 'Köpek kapının arkasında.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Under" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Üstünde', 'Altında', 'Yanında', 'İçinde'],
            correctAnswerIndex: 1,
            explanation: '"Under" altında anlamına gelir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "The book is ___ the table." (üstünde)',
            type: QuestionType.fillInBlank,
            options: ['in', 'on', 'under', 'behind'],
            correctAnswerIndex: 1,
            explanation: '"On" üstünde demektir.',
          ),
        ],
      ),

      // DERS 10: Meslekler
      Lesson(
        id: 10,
        title: 'Meslekler',
        description: 'Yaygın meslek isimleri',
        level: 'A1',
        icon: '👨‍⚕️',
        xpReward: 80,
        vocabulary: [
          VocabularyItem(word: 'Doctor', translation: 'Doktor', exampleSentence: 'My father is a doctor.', exampleTranslation: 'Babam bir doktordur.'),
          VocabularyItem(word: 'Teacher', translation: 'Öğretmen', exampleSentence: 'She is a teacher.', exampleTranslation: 'O bir öğretmendir.'),
          VocabularyItem(word: 'Engineer', translation: 'Mühendis', exampleSentence: 'He is an engineer.', exampleTranslation: 'O bir mühendistir.'),
          VocabularyItem(word: 'Nurse', translation: 'Hemşire', exampleSentence: 'The nurse is very kind.', exampleTranslation: 'Hemşire çok naziktir.'),
          VocabularyItem(word: 'Police officer', translation: 'Polis memuru', exampleSentence: 'The police officer is brave.', exampleTranslation: 'Polis memuru cesurdur.'),
          VocabularyItem(word: 'Chef', translation: 'Aşçı', exampleSentence: 'The chef cooks delicious food.', exampleTranslation: 'Aşçı lezzetli yemekler pişirir.'),
        ],
        content: [
          ContentSection(
            title: 'Mesleklerden Bahsetme',
            explanation: 'Mesleklerden bahsederken "a/an" belirsiz artikeli kullanılır: "I am a teacher."',
            examples: ['I am a student.', 'She is a doctor.', 'He is an engineer.'],
            exampleTranslations: ['Ben bir öğrenciyim.', 'O bir doktor.', 'O bir mühendis.'],
          ),
        ],
        questions: [
          Question(
            prompt: '"Teacher" ne demektir?',
            type: QuestionType.multipleChoice,
            options: ['Doktor', 'Öğretmen', 'Mühendis', 'Avukat'],
            correctAnswerIndex: 1,
            explanation: '"Teacher" öğretmen demektir.',
          ),
          Question(
            prompt: 'Boşluğu doldurun: "He is ___ engineer."',
            type: QuestionType.fillInBlank,
            options: ['a', 'an', 'the', 'no article'],
            correctAnswerIndex: 1,
            explanation: 'Sessiz harfle başlayan "engineer" kelimesinden önce "an" kullanılır.',
          ),
        ],
      ),
    ];
  }
}