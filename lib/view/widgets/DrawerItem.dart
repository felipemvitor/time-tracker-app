import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final bool selected;

  DrawerItem(this.title, this.icon, this.onTap, this.selected);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.black12,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: selected ? Colors.blue : Colors.black87),
        ),
        leading: Icon(icon, color: selected ? Colors.blue : Colors.black54),
      ),
    );
  }
}
