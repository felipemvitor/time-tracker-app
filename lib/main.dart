import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/styles/Theme.dart';

import './util/Routes.dart';
import 'screens/dashboard/DashboardScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: DashboardScreen(),
      routes: routes,
    );
  }
}
