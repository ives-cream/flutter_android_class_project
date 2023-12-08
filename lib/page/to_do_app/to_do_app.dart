import 'package:android_class/Page/to_do_app/data/database.dart';
import 'package:android_class/Page/to_do_app/until/to_do_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../untils/color_matching.dart';
import 'until/dialog_box.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  // reference the hive box
  final mybox = Hive.box("mybox");
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if this is the 1st time ever open in the app, then create default data
    if (mybox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      //   there already exists data
      db.loadData();
    }
    super.initState();
  }

  // text controller
  final _controller = TextEditingController(); // 可編輯文字框的控制器
  // 使用者使用關聯的TextEditingController修改文字時，文字欄位就都會更新值，控制器會通知監聽器；
  // 然後監聽器可以閱讀文字或選擇屬性，以了解使用者輸入的內容或選擇要如何更新內容

  // list of todo tasks
  // List toDoList = [
  //   ["Make Tutorial", false],
  //   ["Do Exercise", true],
  // ];

  // checkBox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  // save new task
  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
    });
    _controller.clear();
    db.updateDataBase();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      // 顯示對話框，但沒有使用AlertDialog的話會出現格式看起來很奇怪
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
    db.updateDataBase();
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("To Do App"),
        backgroundColor: ColorMatchings.color2_5,
        elevation: 0,
        leading: IconButton(
          // 換言之，如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
          icon: ModalRoute.of(context)!.isFirst == true
              ? const Icon(Icons.menu)
              : const Icon(Icons.arrow_back_ios),

          onPressed: () {
            // 如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
            if (ModalRoute.of(context)!.isFirst) {
              Scaffold.of(context)
                  .openDrawer(); //手動打開drawer；單擊iconButton打開drawer
            } else {
              Navigator.pop(context);
            }

            // 如果不等於第一頁(最上層)就pop(context)
            //if (!ModalRoute.of(context)!.isFirst) Navigator.pop(context);
          },
          // 在HomePage為ToDoApp時因為是首頁，因此在ToDoApp頁面時在Drawer按下HOME時會進行頁面堆疊(push)，
          //  此時若ToDoApp還是munu的icon會很奇怪，因此只要在Home(ToDoApp)頁面時
          //  堆疊不等於第一個頁面時就將icon換成arrow_back_ios，是最上層的話顯示menu
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
showDialog
https://medium.com/codechai/flutter-alert-dialog-to-custom-dialog-966195157da8
 */
