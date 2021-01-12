import 'package:flutter/material.dart';

import '../../model/NavigationRoute.dart';
import '../../view/widgets/drawer/NavigationDrawer.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: NavigationDrawer(NavigationRoute.DASHBOARD),
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
