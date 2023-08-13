extension on List<String> {
  String toCSV() => join(', ');
}

class Word {
  final int sequence;
  final List<KanjiElement> kanjiElements;
  final List<ReadingElement> readingElements;
  final List<SenseElement> senseElements;

  Word({
    required this.sequence,
    this.kanjiElements = const [],
    this.readingElements = const [],
    this.senseElements = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'sequence': sequence,
      'kanjiElements': kanjiElements.map((ke) => ke.toMap()).toList(),
      'readingElements': readingElements.map((re) => re.toMap()).toList(),
      'senseElements': senseElements.map((se) => se.toMap()).toList()
    };
  }
}

class KanjiElement {
  final String character;
  final List<String> info;
  final List<String> priority;

  KanjiElement({
    required this.character,
    this.info = const [],
    this.priority = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'character': character,
      'info': info.toCSV(),
      'priority': priority.toCSV()
    };
  }
}

class ReadingElement {
  final String reading;
  final List<String> info;
  final List<String> restrictions;

  ReadingElement({
    required this.reading,
    this.info = const [],
    this.restrictions = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'reading': reading,
      'info': info.toCSV(),
      'restrictions': restrictions.toCSV()
    };
  }
}

class SenseElement {
  final List<String> stagk;
  final List<String> stagr;
  final List<String> pos;
  final List<String> xref;
  final List<String> ant;
  final List<String> field;
  final List<String> misc;
  final List<String> lsource;
  final List<String> dial;
  final List<String> gloss;
  final String? example;

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

  Map<String, dynamic> toMap() {
    return {
      'stagk': stagk.toCSV(),
      'stagr': stagr.toCSV(),
      'pos': pos.toCSV(),
      'xref': xref.toCSV(),
      'ant': ant.toCSV(),
      'field': field.toCSV(),
      'misc': misc.toCSV(),
      'lsource': lsource.toCSV(),
      'dial': dial.toCSV(),
      'gloss': gloss.toCSV(),
      'example': example
    };
  }
}
