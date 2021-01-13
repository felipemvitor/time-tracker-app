import 'package:flutter/material.dart';

class CategoryIcon<int, String> extends Enum<int, String, IconData> {
  const CategoryIcon(int index, String name, IconData icon)
      : super(index, name, icon);

  static const CategoryIcon DASHBOARD =
      const CategoryIcon(0, "dashboard", Icons.dashboard);
  static const CategoryIcon STAR = const CategoryIcon(1, "star", Icons.star);
  static const CategoryIcon CATEGORY =
      const CategoryIcon(2, "category", Icons.category);
  static const CategoryIcon LOCAL_ACTIVITY =
      const CategoryIcon(3, "local_activity", Icons.local_activity);
  static const CategoryIcon MAP = const CategoryIcon(4, "map", Icons.map);
  static const CategoryIcon PERSON =
      const CategoryIcon(5, "person", Icons.person);
  static const CategoryIcon SETTINGS =
      const CategoryIcon(6, "settings", Icons.settings);
  static const CategoryIcon NOTIFICATION =
      const CategoryIcon(7, "notifications", Icons.notifications);
  static const CategoryIcon AC_UNIT =
      const CategoryIcon(8, "ac_unit", Icons.ac_unit);
  static const CategoryIcon ACCESS_ALARM =
      const CategoryIcon(9, "access_alarm", Icons.access_alarm);
  static const CategoryIcon ACCESS_TIME =
      const CategoryIcon(10, "access_time", Icons.access_time);
  static const CategoryIcon BALANCE =
      const CategoryIcon(11, "account_balance", Icons.account_balance);
  static const CategoryIcon ACCOUNT_TREE =
      const CategoryIcon(12, "account_tree", Icons.account_tree);
  static const CategoryIcon AIRPLANE_MODE_ACTIVE =
      const CategoryIcon(13, "airplane_mode_active", Icons.airplanemode_active);
  static const CategoryIcon AIRPORT_SHUTTLE =
      const CategoryIcon(14, "airport_shuttle", Icons.airport_shuttle);
  static const CategoryIcon ALBUM =
      const CategoryIcon(15, "album", Icons.album);
  static const CategoryIcon ALL_INBOX =
      const CategoryIcon(16, "all_inbox", Icons.all_inbox);
  static const CategoryIcon ALL_INCLUSIVE =
      const CategoryIcon(17, "all_inclusive", Icons.all_inclusive);
  static const CategoryIcon ALTERNATE_EMAIL =
      const CategoryIcon(18, "alternate_email", Icons.alternate_email);
  static const CategoryIcon ANALYTICS =
      const CategoryIcon(19, "analytics", Icons.analytics);
  static const CategoryIcon ANCHOR =
      const CategoryIcon(20, "anchor", Icons.anchor);
  static const CategoryIcon ANDROID =
      const CategoryIcon(21, "android", Icons.android);
  static const CategoryIcon APARTMENT =
      const CategoryIcon(22, "apartment", Icons.apartment);
  static const CategoryIcon APP_REGISTRATION =
      const CategoryIcon(23, "app_registration", Icons.app_registration);
  static const CategoryIcon APPS = const CategoryIcon(24, "apps", Icons.apps);
  static const CategoryIcon APPROVAL =
      const CategoryIcon(25, "approval", Icons.approval);
  static const CategoryIcon ARCHITECTURE =
      const CategoryIcon(26, "architecture", Icons.architecture);
  static const CategoryIcon ART_TRACK =
      const CategoryIcon(27, "art_track", Icons.art_track);
  static const CategoryIcon ARTICLE =
      const CategoryIcon(28, "article", Icons.article);
  static const CategoryIcon ASSESSMENT =
      const CategoryIcon(29, "assessment", Icons.assessment);
  static const CategoryIcon ASSIGNMENT =
      const CategoryIcon(30, "assignment", Icons.assignment);
  static const CategoryIcon ASSISTANT_NAVIGATION = const CategoryIcon(
      31, "assistant_navigation", Icons.assistant_navigation);
  static const CategoryIcon ASSISTANT_PHOTO =
      const CategoryIcon(32, "assistant_photo", Icons.assistant_photo);
  static const CategoryIcon ATTACH_FILE =
      const CategoryIcon(33, "attach_file", Icons.attach_file);
  static const CategoryIcon AUDIO_TRACK =
      const CategoryIcon(34, "audio_track", Icons.audiotrack);
  static const CategoryIcon AUTO_AWESOME =
      const CategoryIcon(35, "auto_awesome", Icons.auto_awesome);
  static const CategoryIcon AUTO_STORIES =
      const CategoryIcon(36, "auto_stories", Icons.auto_stories);
  static const CategoryIcon BALLOT =
      const CategoryIcon(37, "ballot", Icons.ballot);
  static const CategoryIcon BAR_CHART =
      const CategoryIcon(38, "bar_chart", Icons.bar_chart);
  static const CategoryIcon BATHTUB =
      const CategoryIcon(39, "bathtub", Icons.bathtub);
  static const CategoryIcon WARNING_AMBER_OUTLINED = const CategoryIcon(
      40, "warning_amber_outlined", Icons.warning_amber_outlined);
  static const CategoryIcon WAVES =
      const CategoryIcon(41, "waves", Icons.waves);
  static const CategoryIcon WB_INCANDESCENT =
      const CategoryIcon(42, "wb_incandescent", Icons.wb_incandescent);
  static const CategoryIcon WEEKEND =
      const CategoryIcon(43, "weekend", Icons.weekend);
  static const CategoryIcon WHATS_HOT =
      const CategoryIcon(44, "whats_hot", Icons.whatshot);
  static const CategoryIcon WINE_BAR =
      const CategoryIcon(45, "wine_bar", Icons.wine_bar);
  static const CategoryIcon WORK = const CategoryIcon(46, "work", Icons.work);
  static const CategoryIcon WORKSPACES_FILLED =
      const CategoryIcon(47, "", Icons.workspaces_filled);

  @override
  List<CategoryIcon> values() {
    return [
      DASHBOARD,
      STAR,
      CATEGORY,
      LOCAL_ACTIVITY,
      MAP,
      PERSON,
      SETTINGS,
      NOTIFICATION,
      AC_UNIT,
      ACCESS_ALARM,
      ACCESS_TIME,
      BALANCE,
      ACCOUNT_TREE,
      AIRPLANE_MODE_ACTIVE,
      AIRPORT_SHUTTLE,
      ALBUM,
      ALL_INBOX,
      ALL_INCLUSIVE,
      ALTERNATE_EMAIL,
      ANALYTICS,
      ANCHOR,
      ANDROID,
      APARTMENT,
      APP_REGISTRATION,
      APPS,
      APPROVAL,
      ARCHITECTURE,
      ART_TRACK,
      ARTICLE,
      ASSESSMENT,
      ASSIGNMENT,
      ASSISTANT_NAVIGATION,
      ASSISTANT_PHOTO,
      ATTACH_FILE,
      AUDIO_TRACK,
      AUTO_AWESOME,
      AUTO_STORIES,
      BALLOT,
      BAR_CHART,
      BATHTUB,
      WARNING_AMBER_OUTLINED,
      WAVES,
      WB_INCANDESCENT,
      WEEKEND,
      WHATS_HOT,
      WINE_BAR,
      WORK,
      WORKSPACES_FILLED
    ];
  }

  @override
  bool equals(Enum e) {
    return index == e.index;
  }
}

abstract class Enum<int, String, IconData> {
  final int index;
  final String name;
  final IconData icon;

  const Enum(this.index, this.name, this.icon);

  List<Enum> values();

  bool equals(Enum e);
}
