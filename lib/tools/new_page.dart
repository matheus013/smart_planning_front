import 'package:flutter/material.dart';

class NewPageScreen extends StatelessWidget {
  final String text;

  NewPageScreen(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
