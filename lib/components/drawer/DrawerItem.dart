import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final bool selected;

  DrawerItem(this.title, this.icon, this.onTap, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: selected ? Color(0xFF131C21) : Color(0xFF2A2F32),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
        splashColor: Colors.black12,
        child: ListTile(
          // tileColor: selected ? Colors.blue : Color(0xFF2A2F32),
          title: Text(
            title,
            style: TextStyle(color: Colors.white70),
          ),
          leading: Icon(icon, color: Colors.white70),
        ),
      ),
    );
  }
}
