import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write('Vorname:        ');
  final vorName = stdin.readLineSync() ?? '';
  if (vorName.length < 2) {
    stdout.write('Ungültiger Wert');
    return;
  }

  stdout.write('Nachname:       ');
  final nachName = stdin.readLineSync() ?? '';
  if (nachName.length < 2) {
    stdout.write('Ungültiger Wert');
    return;
  }
  stdout.write('Anrede: herr/frau:  ');
  final anredeinput = stdin.readLineSync() ?? '';
  final anredeGr = anredeinput.toUpperCase();
  final String anrede;
  if (anredeGr == 'HERR') {
    anrede = 'Herr';
  } else if (anredeGr == 'FRAU') {
    anrede = 'Frau';
  } else {
    stdout.write('Ungültige Eingabe');
    return;
  }
  stdout.write('Dein Alter:     ');
  final alterInput = stdin.readLineSync();
  final alterString = alterInput ?? '';
  final alter = int.tryParse(alterString);

  final String output;
  if (alter == null) {
    output = 'Ungültiger Wert';
  } else {
    if (alter <= 40) {
      output = 'Hallo, $vorName';
    } else {
      output = 'Guten Tag, $anrede $nachName';
    }
  }
  stdout.write(output);
}
//Pseudocode
//
//Aufgabe eine Eingabe erbeten mit der Konsole in Dart 
//Wir Wollen den 'Namen, Vorname, alter und das Geschlecht' erfragen.
//
// Im nächste Schritt wollen wir Differenzieren 
//zwischen einem Jungen und einem Älteren nutzer bei einem 
//Nutzer unter 40 Jahren wollen wir 'Hallo Vorname haben.#
// Bei einem Älteren Nutzer Wollen wir eine Anrede mit Herr oder 
//Frau generieren und eine Ausgabe mit 'Guten Tag Herr/Frau ...' haben.
//
// Wir Fragen nach den Namen mit stdout.writeIl('Wie heist du?');.
// Als nächstes Fragen wir nach dem Alter mit 'stdout.writeIl'
// Mit dem Alter kann
//
//