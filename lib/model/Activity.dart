import 'package:time_tracker_flutter_app/model/Category.dart';

class Activity {
  int id;
  String name;
  int dateStart;
  int dateEnd;
  Category category;

  Activity(this.id, this.name, this.dateStart, this.dateEnd, this.category);

  @override
  String toString() {
    return '{id: $id, name: $name, dateStart: $dateStart, dateEnd: $dateEnd, '
        'category: ${category.toString()}}';
  }

  factory Activity.fromJson(dynamic json) {
    return Activity(json['id'], json['name'], json['dateStart'],
        json['dateEnd'], Category.fromJson(json['category']));
  }
}