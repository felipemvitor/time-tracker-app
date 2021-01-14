import 'package:flutter/material.dart';

import './util/Routes.dart';
import 'screens/dashboard/DashboardScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF131C21),
        textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white70)
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF2A2F32),
        ),
      ),
      home: DashboardScreen(),
      routes: routes,
    );
  }
}
