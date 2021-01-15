import 'package:flutter/material.dart';

import '../../components/text/EditText.dart';
import '../../model/Category.dart';
import '../../styles/ProjectColors.dart';

class CreateCategoriesScreen extends StatefulWidget {
  @override
  _CreateCategoriesScreenState createState() => _CreateCategoriesScreenState();
}

class _CreateCategoriesScreenState extends State<CreateCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    final String title =
        category == null ? 'Create categories' : 'Edit categories';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: ProjectColors.white1),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save, color: ProjectColors.white1),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            EditText('Label'),
            EditText('Label', margin: EdgeInsets.only(top: 16.0))
          ],
        ),
      ),
    );
  }
}
