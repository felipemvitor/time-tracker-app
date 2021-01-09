import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/model/Category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final IconData icon;

  CategoryItem(this.category, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.category.name),
      // subtitle: Text(this.category.weeklyGoal.toString()),
      leading: CircleAvatar(
        child: Icon(icon),
      ),
      trailing: Text(this.category.weeklyGoal.toString()),
    );
  }
}
