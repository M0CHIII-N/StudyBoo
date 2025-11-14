import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _notes = [];
  List<String> get notes => _notes;
  set notes(List<String> value) {
    _notes = value;
  }

  void addToNotes(String value) {
    notes.add(value);
  }

  void removeFromNotes(String value) {
    notes.remove(value);
  }

  void removeAtIndexFromNotes(int index) {
    notes.removeAt(index);
  }

  void updateNotesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    notes[index] = updateFn(_notes[index]);
  }

  void insertAtIndexInNotes(int index, String value) {
    notes.insert(index, value);
  }
}
