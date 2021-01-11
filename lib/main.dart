import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/view/screens/ActivitiesScren.dart';

import 'package:time_tracker_flutter_app/view/screens/CategoriesScreen.dart';
import 'package:time_tracker_flutter_app/view/screens/DashboardScreen.dart';
import 'package:time_tracker_flutter_app/view/screens/GoalsScreen.dart';
import 'package:time_tracker_flutter_app/view/widgets/DrawerItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  var _pages = [
    DashboardScreen(),
    ActivitiesScreen(),
    CategoriesScreen(),
    GoalsScreen()
  ];

  _onDrawerItemSelected(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Time Tracker'),
    );

    return Scaffold(
      appBar: appBar,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
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
              () => _onDrawerItemSelected(0),
              _selectedIndex == 0,
            ),
            DrawerItem(
              'Activities',
              Icons.local_activity,
              () => _onDrawerItemSelected(1),
              _selectedIndex == 1,
            ),
            DrawerItem(
              'Categories',
              Icons.category,
              () => _onDrawerItemSelected(2),
              _selectedIndex == 2,
            ),
            DrawerItem(
              'Goals',
              Icons.star,
              () => _onDrawerItemSelected(3),
              _selectedIndex == 3,
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
