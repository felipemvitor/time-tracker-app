import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry margin;

  EditText(this.label, {this.margin});

  final border =
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white70));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.subtitle1),
          TextField(
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              border: border,
              enabledBorder: border,
            ),
          ),
        ],
      ),
    );
  }
}
