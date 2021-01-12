import 'package:flutter/material.dart';

import '../../model/NavigationRoute.dart';
import '../../view/widgets/drawer/NavigationDrawer.dart';

class ActivitiesScreen extends StatefulWidget {
  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities'),
      ),
      drawer: NavigationDrawer(NavigationRoute.ACTIVITIES),
      body: Center(
        child: Text('Activities'),
      ),
    );
  }
}
