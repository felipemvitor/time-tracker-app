import 'package:flutter/material.dart';

import 'package:time_tracker_flutter_app/view/screens/CategoriesScreen.dart';
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
            DrawerItem('Dashboard', Icons.dashboard, () {}, true),
            DrawerItem('Activities', Icons.local_activity, () {}, false),
            DrawerItem('Categories', Icons.category, () {}, false),
            DrawerItem('Goals', Icons.star, () {}, false),
          ],
        ),
      ),
      body: CategoriesScreen(),
    );
  }
}
