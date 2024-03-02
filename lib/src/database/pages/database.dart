import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
//import 'package:isardemo/model/note.dart';
import 'package:path_provider/path_provider.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/database/pages/data.dart';


class DataDatabase extends ChangeNotifier {
  static late Isar isar;
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([DataSchema], directory: dir.path);
  }

  final List<Data> currentDatas = [];

  Future<void> addData(
    String textFromUser,
   String lastNameFromUser,
    String passFromUser,
  ) async {
    final newData = Data()
      ..text = textFromUser
      ..lastname=lastNameFromUser
      ..password = passFromUser;
    await isar.writeTxn(() async {
      await isar.datas.put(newData);
   
    });

    fetchData();
  }
  // Future<void>addLast(String lastNameFromUser)
  // async{
  //   final newlast=Note()..lastname=lastNameFromUser;
  //   await isar.writeTxn(() async{
  //     await isar.notes.put(newlast);
  //   });
  // }

  Future<void> fetchData() async {
    List<Data> fetchData= await isar.datas.where().findAll();
    currentDatas.clear();
    currentDatas.addAll(fetchData);
    notifyListeners();
  }

  Future<void> updateData(int id, String newText) async {
    final existingData = await isar.datas.get(id);
    if (existingData != null) {
      existingData.text = newText;
      await isar.writeTxn(() => isar.datas.put(existingData));
      await fetchData();
    }
  }

  Future<void> deleteData(int id) async {
    await isar.writeTxn(() => isar.datas.delete(id));
    await fetchData();
  }

  Future<void> getNote() async {
    List<Data> notes = [];
    await isar.txn(() async {
      final data = await isar.datas.where().findAll();
    });
  }
}
