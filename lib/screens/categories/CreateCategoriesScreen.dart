import 'package:flutter/material.dart';

import '../../components/text/EditText.dart';
import '../../model/Category.dart';
import '../../screens/categories/components/CategoryIconButton.dart';
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

    final Size size = MediaQuery.of(context).size;
    final screenPadding = 24;
    final paddingBetweenButtons = 24.0;
    final iconsWidth = 48;

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
          if (category != null)
            IconButton(
              icon: Icon(Icons.delete, color: ProjectColors.white2),
              onPressed: () {},
            ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.check, color: ProjectColors.white2),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            EditText('Name', onChanged: setName),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryIconButton('Icon', Icons.category, Colors.white),
                  CategoryIconButton('Color', Icons.palette, Colors.white),
                  SizedBox(
                    width: size.width -
                        2 * screenPadding -
                        2 * iconsWidth -
                        2 * paddingBetweenButtons,
                    child: EditText(
                      'Weekly Goal',
                      margin: EdgeInsets.only(top: 32.0),
                      onChanged: setGoal,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
