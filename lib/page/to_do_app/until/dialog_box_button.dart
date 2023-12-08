import 'package:flutter/material.dart';

class DialogBoxButton extends StatelessWidget {
  DialogBoxButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
