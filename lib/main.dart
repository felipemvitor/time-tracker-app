import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/model/NavigationRoute.dart';

import 'package:time_tracker_flutter_app/view/screens/ActivitiesScreen.dart';
import 'package:time_tracker_flutter_app/view/screens/CategoriesScreen.dart';
import 'package:time_tracker_flutter_app/view/screens/DashboardScreen.dart';
import 'package:time_tracker_flutter_app/view/screens/GoalsScreen.dart';

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
