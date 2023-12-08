import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String lateText;
  final bool obscureText;
  final TextEditingController controller;
  MyTextField({
    super.key,
    required this.lateText, //輸入為空直時的提示文字，輸入後會跑到左上方
    required this.obscureText, // 是否隱藏現在編輯的文字；false不隱藏，ture隱藏
    required this.controller, // 文字控制器，text field 所輸入的文字
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorMatchings.color2_6, //輸入游標的顏色
      controller: controller,
      decoration: InputDecoration(
          // 輸入效果
          border: OutlineInputBorder(
            // 輸入外邊框
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: ColorMatchings.color3_3, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: ColorMatchings.color1_6, width: 2),
          ),
          // enabledBorder：啟用時使用且不顯示錯誤
          // disabledBorder：停用時使用且不顯示錯誤
          // focusedBorder：在焦點對準且未顯示錯誤時使用
          // errorBorder：未對焦並顯示錯誤時使用
          // focusedErrorBorder：在焦點對準並顯示錯誤時使用
          // border：當上面的相應參數（基於當前狀態）未定義時，圍繞裝飾容器繪製的邊框形狀
          // https://www.flutterbeads.com/textfield-textformfield-border-in-flutter/
          // hintText 提示文字
          labelText: lateText,
          labelStyle: TextStyle(color: ColorMatchings.color2_5)),
      obscureText: obscureText,
    );
  }
}
