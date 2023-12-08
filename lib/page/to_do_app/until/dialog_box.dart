import 'package:flutter/material.dart';

import 'dialog_box_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFE1CBD7),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // hintText: "Add a new task",
                labelText: "Add a new task",
              ),
            ),

            // button -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                DialogBoxButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 10),
                // cancel button
                DialogBoxButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
      // // 警示對話框
      // title: Text("Alert Dialog"), // 警示對話框的標題
      // content: Text("Dialog Content"), // 警示對話框的內文
    );
  }
}
