import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../components/drawer/NavigationDrawer.dart';
import '../../model/Category.dart';
import '../../model/enum/NavigationRoute.dart';
import '../../screens/categories/CreateCategoriesScreen.dart';
import 'components/CategoryItem.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> _categories = [];

  Future loadCategories() async {
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
        title: Text('Categories'),
      ),
      drawer: NavigationDrawer(NavigationRoute.CATEGORIES),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'Weekly Goal',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemCount: _categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(_categories[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreateCategoriesScreen(),
            settings: RouteSettings(
              arguments: null,
            ),
          ),
        ),
      ),
    );
  }
}
