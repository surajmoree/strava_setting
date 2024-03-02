import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
//import 'package:isardemo/model/note.dart';
import 'package:path_provider/path_provider.dart';
import 'package:strava_clone/src/boot.dart';

import 'note.dart';

class NoteDatabase extends ChangeNotifier {
  static late Isar isar;
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([NoteSchema], directory: dir.path);
  }

  final List<Note> currentNotes = [];

  Future<void> addNote(
    String textFromUser,
   
    String passFromUser,
  ) async {
    final newNote = Note()
      ..text = textFromUser
      ..password = passFromUser;
    await isar.writeTxn(() async {
      await isar.notes.put(newNote);
   
    });

    fetchNote();
  }
  // Future<void>addLast(String lastNameFromUser)
  // async{
  //   final newlast=Note()..lastname=lastNameFromUser;
  //   await isar.writeTxn(() async{
  //     await isar.notes.put(newlast);
  //   });
  // }

  Future<void> fetchNote() async {
    List<Note> fetchNote = await isar.notes.where().findAll();
    currentNotes.clear();
    currentNotes.addAll(fetchNote);
    notifyListeners();
  }

  Future<void> updateNote(int id, String newText) async {
    final existingNote = await isar.notes.get(id);
    if (existingNote != null) {
      existingNote.text = newText;
      await isar.writeTxn(() => isar.notes.put(existingNote));
      await fetchNote();
    }
  }

  Future<void> deleteNote(int id) async {
    await isar.writeTxn(() => isar.notes.delete(id));
    await fetchNote();
  }

  Future<void> getNote() async {
    List<Note> notes = [];
    await isar.txn(() async {
      final data = await isar.notes.where().findAll();
    });
  }
}
