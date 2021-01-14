import 'package:flutter/material.dart';

import '../screens/activities/ActivitiesScreen.dart';
import '../screens/categories/CategoriesScreen.dart';
import '../screens/dashboard/DashboardScreen.dart';
import '../screens/goals/GoalsScreen.dart';
import '../screens/categories/CreateCategoriesScreen.dart';

import '../model/enum/NavigationRoute.dart';

var routes = <String, WidgetBuilder>{
  NavigationRoute.ACTIVITIES.name: (ctx) => ActivitiesScreen(),
  NavigationRoute.CATEGORIES.name: (ctx) => CategoriesScreen(),
  NavigationRoute.DASHBOARD.name: (ctx) => DashboardScreen(),
  NavigationRoute.GOALS.name: (ctx) => GoalsScreen(),
  NavigationRoute.CREATE_CATEGORIES.name: (ctx) => CreateCategoriesScreen()
};
