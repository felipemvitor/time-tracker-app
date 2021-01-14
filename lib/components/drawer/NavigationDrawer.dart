import 'package:flutter/material.dart';

import '../../model/enum/NavigationRoute.dart';
import 'DrawerItem.dart';

class NavigationDrawer extends StatelessWidget {
  final NavigationRoute _route;

  NavigationDrawer(this._route);

  _onDrawerItemSelected(BuildContext context, NavigationRoute destination) {
    Navigator.of(context).pop();
    Navigator.pushNamed(context, destination.name);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Color(0xFF2A2F32),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Container(
                  color: Color(0xFF2A2F32),
                  child: Center(
                    child: Text(
                      'Time Tracker',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.white),
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
                () =>
                    _onDrawerItemSelected(context, NavigationRoute.ACTIVITIES),
                _route.equals(NavigationRoute.ACTIVITIES),
              ),
              DrawerItem(
                'Categories',
                Icons.category,
                () =>
                    _onDrawerItemSelected(context, NavigationRoute.CATEGORIES),
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
        ),
      ),
    );
  }
}
