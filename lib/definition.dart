// definition.dart

class Definition {
  final String word;
  final String phonetic;
  final List<Meaning> meanings;

  Definition({required this.word, required this.phonetic, required this.meanings});

  factory Definition.fromJson(Map<String, dynamic> json) {
    // Add your code for parsing JSON data into Definition objects here
  }
}

class Meaning {
  final String partOfSpeech;
  final List<String> definitions;

  Meaning({required this.partOfSpeech, required this.definitions});

  // Add your code for parsing JSON data into Meaning objects here
}
