import 'package:intl/intl.dart';

class DateTimeFormatter {
  static DateFormat _timeFormatter = DateFormat("hh:mm");

  static String formatTime(int date) {
    return _timeFormatter.format(DateTime.fromMillisecondsSinceEpoch(date));
  }

  static String formatDuration(int duration) {
    return duration.toString() + "h";
  }
}
