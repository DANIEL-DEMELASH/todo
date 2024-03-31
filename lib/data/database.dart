import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  final _myBox = Hive.box('mybox');

  List todoList = [];

  void createInitialData() {
    todoList = [
      ['Make a tutorial', false],
      ['Do Exercise', false]
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', todoList);
  }
}
