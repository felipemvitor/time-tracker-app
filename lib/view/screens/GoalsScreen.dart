import 'package:flutter/material.dart';

import '../../model/NavigationRoute.dart';
import '../../view/widgets/drawer/NavigationDrawer.dart';

class GoalsScreen extends StatefulWidget {
  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
      ),
      drawer: NavigationDrawer(NavigationRoute.GOALS),
      body: Center(
        child: Text('Goals'),
      ),
    );
  }
}
