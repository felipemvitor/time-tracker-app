import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;

  Label(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text, style: Theme.of(context).textTheme.subtitle2),
    );
  }
}
