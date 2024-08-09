import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TodoProvider extends ChangeNotifier {
  List<List<dynamic>> _toDoList = [];
  List<List<dynamic>> get toDoList => _toDoList;

  Future<void> loadToDoList() async {
    final prefs = await SharedPreferences.getInstance();
    final String? toDoListString = prefs.getString('toDoList');
    if (toDoListString != null) {
      _toDoList = List<List<dynamic>>.from(
          jsonDecode(toDoListString).map((item) => List<dynamic>.from(item)));
      notifyListeners();
    }
  }

  Future<void> saveToDoList() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('toDoList', jsonEncode(_toDoList));
  }

  void addTask(String taskName) {
    _toDoList.add([taskName, false]);
    saveToDoList();
    notifyListeners();
  }

  void toggleTask(int index) {
    _toDoList[index][1] = !_toDoList[index][1];
    saveToDoList();
    notifyListeners();
  }

  void deleteTask(int index) {
    _toDoList.removeAt(index);
    saveToDoList();
    notifyListeners();
  }
}
