import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_app/model/Category.dart';
import 'package:time_tracker_flutter_app/view/widgets/CategoryItem.dart';

import 'package:flutter/services.dart' show rootBundle;

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Category> _categories = [];

  Future<List<Category>> loadCategories() async {
    String json = await rootBundle.loadString('assets/data/categories.json');

    var list = jsonDecode(json) as List;
    var categories = list.map((item) => Category.fromJson(item)).toList();
    setState(() {
      _categories = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    loadCategories();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(_categories[index], Icons.category);
        },
        separatorBuilder: (BuildContext context, int index){
          return const Divider();
        },
      ),
    );
  }
}
