import 'package:flutter/material.dart';

import '../../../model/Category.dart';
import '../../../util/DateTimeFormatter.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.name),
      // subtitle: Text(this.category.weeklyGoal.toString()),
      leading: CircleAvatar(
        child: category.icon != null ? Icon(category.icon.data) : null,
      ),
      trailing: Text(
        DateTimeFormatter.formatDuration(category.weeklyGoal),
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
