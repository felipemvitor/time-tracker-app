import 'package:flutter/material.dart';
import '../../styles/ProjectColors.dart';
import '../../styles/Dimensions.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final bool selected;

  DrawerItem(this.title, this.icon, this.onTap, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimensions.margin.drawerItem,
      decoration: BoxDecoration(
          color: selected ? ProjectColors.black2 : ProjectColors.black1,
          borderRadius: Dimensions.borderRadius.drawerItem),
      child: InkWell(
        onTap: onTap,
        borderRadius: Dimensions.borderRadius.drawerItem,
        splashColor: ProjectColors.black1,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(color: ProjectColors.white2),
          ),
          leading: Icon(icon, color: ProjectColors.white2),
        ),
      ),
    );
  }
}
