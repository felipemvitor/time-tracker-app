import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/model/NavigationRoute.dart';

import 'screens/activities/ActivitiesScreen.dart';
import 'screens/categories/CategoriesScreen.dart';
import 'screens/dashboard/DashboardScreen.dart';
import 'screens/goals/GoalsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      routes: {
        NavigationRoute.ACTIVITIES.name: (ctx) => ActivitiesScreen(),
        NavigationRoute.CATEGORIES.name: (ctx) => CategoriesScreen(),
        NavigationRoute.DASHBOARD.name: (ctx) => DashboardScreen(),
        NavigationRoute.GOALS.name: (ctx) => GoalsScreen()
      },
    );
  }
}
