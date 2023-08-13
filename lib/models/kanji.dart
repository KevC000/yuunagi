class Kanji {
  final List<Character> characters;

  Kanji({required this.characters});
}

class Character {
  final String literal;
  final Codepoint codepoint;
  final Radical radical;
  final Misc misc;
  final List<DicNumber>? dicNumbers;
  final List<QueryCode>? queryCodes;
  final ReadingMeaning? readingMeaning;

  Character({
    required this.literal,
    required this.codepoint,
    required this.radical,
    required this.misc,
    this.dicNumbers,
    this.queryCodes,
    this.readingMeaning,
  });
}

class Codepoint {
  final List<CpValue> cpValues;

  Codepoint({required this.cpValues});
}

class CpValue {
  final String value;
  final String cpType;

  CpValue({required this.value, required this.cpType});
}

class Radical {
  final List<RadValue> radValues;

  Radical({required this.radValues});
}

class RadValue {
  final String value;
  final String radType;

  RadValue({required this.value, required this.radType});
}

class Misc {
  final int? grade;
  final List<int> strokeCount;
  final List<Variant>? variants;
  final int? freq;
  final List<String>? radNames;
  final int? jlpt;

  Misc({
    this.grade,
    required this.strokeCount,
    this.variants,
    this.freq,
    this.radNames,
    this.jlpt,
  });
}

class Variant {
  final String value;
  final String varType;

  Variant({required this.value, required this.varType});
}

class DicNumber {
  final String value;
  final String drType;
  final String? mVol;
  final String? mPage;

  DicNumber({
    required this.value,
    required this.drType,
    this.mVol,
    this.mPage,
  });
}

class QueryCode {
  final String value;
  final String qcType;
  final String? skipMisclass;

  QueryCode({
    required this.value,
    required this.qcType,
    this.skipMisclass,
  });
}

class ReadingMeaning {
  final List<RMGroup>? rmGroups;
  final List<Nanori>? nanoris;

  ReadingMeaning({this.rmGroups, this.nanoris});
}

class RMGroup {
  final List<Reading> readings;
  final List<Meaning> meanings; // Use the Meaning class instead of String

  RMGroup({required this.readings, required this.meanings});
}

class Reading {
  final String value;
  final String rType;
  final String? onType; // optional attribute
  final String? rStatus; // optional attribute

  Reading(
      {required this.value, required this.rType, this.onType, this.rStatus});
}

class Meaning {
  final String value;
  final String? mLang;

  Meaning({required this.value, this.mLang});

  Map<String, dynamic> toMap() {
    return {'value': value, 'mLang': mLang};
  }

  static Meaning fromMap(Map<String, dynamic> map) {
    return Meaning(value: map['value'], mLang: map['mLang']);
  }
}

class Nanori {
  final String value;

  Nanori({required this.value});
}
