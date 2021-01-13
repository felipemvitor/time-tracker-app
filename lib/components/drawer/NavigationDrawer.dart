import 'package:flutter/material.dart';

import '../../model/enum/NavigationRoute.dart';
import 'DrawerItem.dart';

class NavigationDrawer extends StatelessWidget {
  final NavigationRoute _route;

  NavigationDrawer(this._route);

  _onDrawerItemSelected(BuildContext context, NavigationRoute destination) {
    Navigator.of(context).pop();
    Navigator.pushReplacementNamed(context, destination.name);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Time Tracker',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          DrawerItem(
            'Dashboard',
            Icons.dashboard,
            () => _onDrawerItemSelected(context, NavigationRoute.DASHBOARD),
            _route.equals(NavigationRoute.DASHBOARD),
          ),
          DrawerItem(
            'Activities',
            Icons.local_activity,
            () => _onDrawerItemSelected(context, NavigationRoute.ACTIVITIES),
            _route.equals(NavigationRoute.ACTIVITIES),
          ),
          DrawerItem(
            'Categories',
            Icons.category,
            () => _onDrawerItemSelected(context, NavigationRoute.CATEGORIES),
            _route.equals(NavigationRoute.CATEGORIES),
          ),
          DrawerItem(
            'Goals',
            Icons.star,
            () => _onDrawerItemSelected(context, NavigationRoute.GOALS),
            _route.equals(NavigationRoute.GOALS),
          ),
        ],
      ),
    );
  }
}
