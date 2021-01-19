import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../components/text/Label.dart';
import '../../styles/Dimensions.dart';
import '../../styles/ProjectColors.dart';

class EditText extends StatelessWidget {
  final String label;

  final EdgeInsetsGeometry margin;
  final TextEditingController controller;
  final Function onChanged;
  final TextInputType keyboardType;

  EditText(
    this.label, {
    this.margin,
    this.controller,
    this.onChanged,
    this.keyboardType,
  });

  final border = OutlineInputBorder(
    borderSide: BorderSide(
      color: ProjectColors.white2,
      width: Dimensions.width.border,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label(label),
          Container(
            margin: Dimensions.margin.componentWithLabel,
            child: TextField(
              keyboardType: keyboardType,
              onChanged: this.onChanged,
              controller: controller,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(
                color: ProjectColors.white1,
                fontSize: Dimensions.fontSize.textField,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: ProjectColors.black1,
                contentPadding: Dimensions.padding.textField,
                border: border,
                enabledBorder: border,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
