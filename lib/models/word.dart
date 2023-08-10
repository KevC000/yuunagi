class Word {
  final int sequence; // Sequence number as a unique ID
  final List<KanjiElement> kanjiElements; // *: 0 or more
  final List<ReadingElement> readingElements; // *: 0 or more
  final List<SenseElement> senseElements; // *: 0 or more

  Word({
    required this.sequence,
    this.kanjiElements = const [],
    this.readingElements = const [],
    this.senseElements = const [],
  });
}

class KanjiElement {
  final String character; // Character itself
  final List<String> info; // *: 0 or more
  final List<String> priority; // *: 0 or more

  KanjiElement({
    required this.character,
    this.info = const [],
    this.priority = const [],
  });
}

class ReadingElement {
  final String reading; // Kana reading
  final List<String> info; // *: 0 or more
  final List<String> restrictions; // *: 0 or more

  ReadingElement({
    required this.reading,
    this.info = const [],
    this.restrictions = const [],
  });
}

class SenseElement {
  final List<String> stagk; // *: 0 or more
  final List<String> stagr; // *: 0 or more
  final List<String> pos; // *: 0 or more
  final List<String> xref; // *: 0 or more
  final List<String> ant; // *: 0 or more
  final List<String> field; // *: 0 or more
  final List<String> misc; // *: 0 or more
  final List<String> lsource; // *: 0 or more
  final List<String> dial; // *: 0 or more
  final List<String> gloss; // *: 0 or more
  final String? example; // ?: 0 or 1

  SenseElement({
    this.stagk = const [],
    this.stagr = const [],
    this.pos = const [],
    this.xref = const [],
    this.ant = const [],
    this.field = const [],
    this.misc = const [],
    this.lsource = const [],
    this.dial = const [],
    this.gloss = const [],
    this.example,
  });
}
