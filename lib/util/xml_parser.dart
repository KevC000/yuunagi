import 'package:flutter/services.dart';
import 'package:xml/xml.dart';
import 'package:yuunagi/models/kanji.dart';
import 'package:yuunagi/models/word.dart';

class XmlParserService {
  Future<List<Word>> parseJMDict() async {
    final xmlContent = await rootBundle.loadString('assets/jmdict.xml');
    final xmlDocument = XmlDocument.parse(xmlContent);

    List<Word> words = [];
    for (var entry in xmlDocument.findAllElements('entry')) {
      int sequence = int.parse(entry.findElements('ent_seq').first.innerText);

      List<KanjiElement> kanjiElements = entry
          .findAllElements('k_ele')
          .map((kElement) => KanjiElement(
              character: kElement.findElements('keb').first.innerText,
              info: kElement
                  .findElements('ke_inf')
                  .map((info) => info.innerText)
                  .toList(),
              priority: kElement
                  .findElements('ke_pri')
                  .map((pri) => pri.innerText)
                  .toList()))
          .toList();

      List<ReadingElement> readingElements = entry
          .findAllElements('r_ele')
          .map((rElement) => ReadingElement(
                reading: rElement.findElements('reb').first.innerText,
                info: rElement
                    .findElements('re_inf')
                    .map((info) => info.innerText)
                    .toList(),
                restrictions: rElement
                    .findElements('re_restr')
                    .map((restr) => restr.innerText)
                    .toList(),
              ))
          .toList();

      List<SenseElement> senseElements = entry
          .findAllElements('sense')
          .map((sElement) => SenseElement(
                stagk: sElement
                    .findElements('stagk')
                    .map((stagk) => stagk.innerText)
                    .toList(),
                stagr: sElement
                    .findElements('stagr')
                    .map((stagr) => stagr.innerText)
                    .toList(),
                pos: sElement
                    .findElements('pos')
                    .map((pos) => pos.innerText)
                    .toList(),
                xref: sElement
                    .findElements('xref')
                    .map((xref) => xref.innerText)
                    .toList(),
                ant: sElement
                    .findElements('ant')
                    .map((ant) => ant.innerText)
                    .toList(),
                field: sElement
                    .findElements('field')
                    .map((field) => field.innerText)
                    .toList(),
                misc: sElement
                    .findElements('misc')
                    .map((misc) => misc.innerText)
                    .toList(),
                lsource: sElement
                    .findElements('lsource')
                    .map((lsource) => lsource.innerText)
                    .toList(),
                dial: sElement
                    .findElements('dial')
                    .map((dial) => dial.innerText)
                    .toList(),
                gloss: sElement
                    .findElements('gloss')
                    .map((gloss) => gloss.innerText)
                    .toList(),
                // Add any other attributes as needed.
              ))
          .toList();

      words.add(Word(
          sequence: sequence,
          kanjiElements: kanjiElements,
          readingElements: readingElements,
          senseElements: senseElements));
    }

    return words;
  }

  Future<List<Kanji>> parseKanjiDict() async {
    final xmlContent = await rootBundle.loadString('assets/kanjidic.xml');
    final xmlDocument = XmlDocument.parse(xmlContent);

    List<Kanji> kanjis = [];
    for (var entry in xmlDocument.findAllElements('character')) {
      String literal = entry.findElements('literal').first.innerText;

      List<Reading> readings = entry
          .findAllElements('reading')
          .map((readingElement) => Reading(
                value: readingElement.innerText,
                type: readingElement.getAttribute('r_type') ?? 'unknown',
              ))
          .toList();

      List<Meaning> meanings = entry
          .findAllElements('meaning')
          .map((meaningElement) => Meaning(
                value: meaningElement.innerText,
                lang: meaningElement.getAttribute('m_lang'),
              ))
          .toList();

      ReadingMeaning readingMeaning = ReadingMeaning(
          rmgroup: [RMGroup(readings: readings, meanings: meanings)]);

      kanjis.add(Kanji(literal: literal, readingMeaning: readingMeaning));
    }

    return kanjis;
  }
}
