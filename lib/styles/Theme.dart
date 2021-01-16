import 'package:flutter/material.dart';

import './ProjectColors.dart';

var theme = ThemeData(
  scaffoldBackgroundColor: ProjectColors.black2,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: ProjectColors.white2),
    subtitle2: TextStyle(color: ProjectColors.white2),
  ),
  appBarTheme: AppBarTheme(
    color: ProjectColors.black1,
  ),
);
