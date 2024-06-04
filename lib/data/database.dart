import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

// run this method if this is first time ever opening this app
  void createInitialData() {
    toDoList = [
      [
        "Make Notes",
        false,
      ],
      [
        "exercise",
        false,
      ],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
