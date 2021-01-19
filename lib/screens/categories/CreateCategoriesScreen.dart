import 'package:flutter/material.dart';

import '../../components/AppBarIcon.dart';
import '../../components/text/EditText.dart';
import '../../model/Category.dart';
import '../../screens/categories/components/CategoryIconButton.dart';
import '../../styles/Dimensions.dart';
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
    final screenPadding = Dimensions.padding.body.horizontal * 2;
    final paddingBetweenButtons =
        Dimensions.margin.editTextDistance.horizontal * 2;
    final iconsWidth = 2 *
        (Dimensions.iconSize.button +
            Dimensions.width.border +
            Dimensions.padding.categoryIcon.horizontal);

    Function setName = (name) => setState(() => _name = name);
    Function setGoal = (goal) => setState(() => _goal = goal);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: ProjectColors.white2),
            onPressed: () => Navigator.of(context).pop()),
        actions: [
          if (category != null) AppBarIcon(Icons.delete, () {}),
          Container(
            margin: Dimensions.margin.appBarIcon,
            child: AppBarIcon(Icons.check, () {}),
          ),
        ],
      ),
      body: Container(
        padding: Dimensions.padding.body,
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
                        screenPadding -
                        iconsWidth -
                        paddingBetweenButtons,
                    child: EditText(
                      'Weekly Goal',
                      margin: Dimensions.margin.editTextDistance,
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
