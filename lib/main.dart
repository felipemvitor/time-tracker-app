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
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      routes: routes,
    );
  }
}
