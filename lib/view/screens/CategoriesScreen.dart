import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
import '../widgets/CategoryItem.dart';
import '../../model/Category.dart';

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

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Name'),
              Text('Weekly Goal'),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: _categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(_categories[index], Icons.category);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}
