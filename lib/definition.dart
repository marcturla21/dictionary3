class Definition {
  final String word;
  final String phonetic;
  final List<Meaning> meanings;

  Definition({required this.word, required this.phonetic, required this.meanings});

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      word: json['word'],
      phonetic: json['phonetic'],
      meanings: List<Meaning>.from(json['meanings'].map((meaning) => Meaning.fromJson(meaning))),
    );
  }
}

class Meaning {
  final String partOfSpeech;
  final List<String> definitions;

  Meaning({required this.partOfSpeech, required this.definitions});

  factory Meaning.fromJson(Map<String, dynamic> json) {
    return Meaning(
      partOfSpeech: json['partOfSpeech'],
      definitions: List<String>.from(json['definitions'].map((definition) => definition['definition'])),
    );
  }
}
