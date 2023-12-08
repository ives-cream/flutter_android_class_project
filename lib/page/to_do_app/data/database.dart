import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box("mybox");

  // run this method if this is the 1st time open this app ever
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", true],
    ];
  }

  // load the data form database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
