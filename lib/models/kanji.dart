class Kanji {
  final String literal; // The kanji character itself
  final ReadingMeaning? readingMeaning; // ?: 0 or 1

  // Other fields like grade, stroke count, etc. could be added similarly

  Kanji({
    required this.literal,
    this.readingMeaning,
  });
}

class ReadingMeaning {
  final List<RMGroup> rmgroup; // RMGroup (Reading and Meaning Group)

  ReadingMeaning({
    required this.rmgroup,
  });
}

class RMGroup {
  final List<Reading> readings; // *: 0 or more
  final List<Meaning> meanings; // *: 0 or more

  RMGroup({
    this.readings = const [],
    this.meanings = const [],
  });
}

class Reading {
  final String value;
  final String
      type; // This could represent the type like 'ja_on', 'ja_kun', etc.

  Reading({
    required this.value,
    required this.type,
  });
}

class Meaning {
  final String value;
  final String? lang; // If not provided, it's English by default

  Meaning({
    required this.value,
    this.lang,
  });
}
