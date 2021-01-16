import 'package:flutter/material.dart';

import '../../components/text/EditText.dart';
import '../../model/Category.dart';
import '../../styles/ProjectColors.dart';

class CreateCategoriesScreen extends StatefulWidget {
  @override
  _CreateCategoriesScreenState createState() => _CreateCategoriesScreenState();
}

class _CreateCategoriesScreenState extends State<CreateCategoriesScreen> {
  String _name = '';
  String _goal = '';

  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    final String title =
        category == null ? 'Create categories' : 'Edit categories';

    Function setName = (name) => setState(() => _name = name);
    Function setGoal = (goal) => setState(() => _goal = goal);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: ProjectColors.white2),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save, color: ProjectColors.white2),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            EditText('Name', onChanged: setName),
            EditText(
              'Weekly Goal',
              margin: EdgeInsets.only(top: 32.0),
              onChanged: setGoal,
            ),
          ],
        ),
      ),
    );
  }
}
