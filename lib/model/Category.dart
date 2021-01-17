import '../model/enum/CategoryIcon.dart';

class Category {
  int id;
  String name;
  int weeklyGoal;
  CategoryIcon icon;

  Category(this.id, this.name, this.weeklyGoal, this.icon);

  @override
  String toString() {
    return '{id: $id, name: $name, weeklyGoal: $weeklyGoal}';
  }

  factory Category.fromJson(dynamic json) {
    return Category(json['id'], json['name'], json['weeklyGoal'],
        CategoryIcon.getElementAt(json['icon']));
  }
}
