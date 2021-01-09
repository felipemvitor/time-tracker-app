class Category {
  int id;
  String name;
  int weeklyGoal;
  double wowGoalMultiplier;

  Category(this.id, this.name, this.weeklyGoal, this.wowGoalMultiplier);

  @override
  String toString() {
    return '{id: $id, name: $name, weeklyGoal: $weeklyGoal, wowGoalMultiplier: $wowGoalMultiplier}';
  }

  factory Category.fromJson(dynamic json) {
    return Category(json['id'], json['name'], json['weeklyGoal'],
        json['wowGoalMultiplier']);
  }
}