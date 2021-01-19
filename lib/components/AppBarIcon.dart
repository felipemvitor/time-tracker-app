import 'package:flutter/material.dart';

import '../styles/Dimensions.dart';
import '../styles/ProjectColors.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  AppBarIcon(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: Dimensions.iconSize.appBarButton,
      icon: Icon(icon, color: ProjectColors.white2),
      iconSize: Dimensions.iconSize.appBarButton,
      onPressed: this.onPressed,
    );
  }
}
