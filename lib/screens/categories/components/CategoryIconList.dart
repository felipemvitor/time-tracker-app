import 'package:flutter/material.dart';
import '../../../model/enum/CategoryIcon.dart';

class CategoryIconList extends StatelessWidget {
  final List<CategoryIcon> values = CategoryIcon.getValues();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsets.all(16.0),
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: List.generate(values.length, (index) {
        return CircleAvatar(
          child: Icon(values[index].data),
        );
      }),
    );
  }
}
