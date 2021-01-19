import 'package:flutter/material.dart';

import '../../../model/Category.dart';
import '../../../util/DateTimeFormatter.dart';
import '../../../styles/Dimensions.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: Text(category.name),
      contentPadding: Dimensions.padding.categoryItem,
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
