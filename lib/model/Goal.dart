class Goal {
  int id;
  String name;
  int yearlyGoal;
  double wowGoalMultiplier;

  Goal(this.id, this.name, this.yearlyGoal, this.wowGoalMultiplier);

  @override
  String toString() {
    return '{id: $id, name: $name, weeklyGoal: $yearlyGoal, wowGoalMultiplier: $wowGoalMultiplier}';
  }

  factory Goal.fromJson(dynamic json) {
    return Goal(json['id'], json['name'], json['yearlyGoal'],
        json['wowGoalMultiplier']);
  }
}
