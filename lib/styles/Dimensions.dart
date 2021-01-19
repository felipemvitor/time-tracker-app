import 'package:flutter/widgets.dart';

class Dimensions {
  static _BorderRadius borderRadius = const _BorderRadius();
  static _FontSize fontSize = const _FontSize();
  static _Height height = const _Height();
  static _IconSize iconSize = const _IconSize();
  static _Margin margin = const _Margin();
  static _Padding padding = const _Padding();
  static _Width width = const _Width();
}

class _BorderRadius {
  const _BorderRadius();

  final drawerItem = const BorderRadius.all(Radius.circular(16));
  final textField = const BorderRadius.all(Radius.circular(4.0));
}

class _FontSize {
  const _FontSize();

  final textField = 18.0;
  final drawerHeader = 24.0;
}

class _Height {
  const _Height();
}

class _IconSize {
  const _IconSize();

  final appBarButton = 24.0;
  final button = 30.0;
}

class _Margin {
  const _Margin();

  final appBarIcon = const EdgeInsets.only(right: 16.0);
  final componentWithLabel = const EdgeInsets.only(top: 8.0);
  final drawerHeader = const EdgeInsets.only(bottom: 16.0);
  final drawerItem = const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0);
  final editTextDistance = const EdgeInsets.only(top: 32.0);
}

class _Padding {
  const _Padding();

  final body = const EdgeInsets.all(24.0);
  final categoryItem =
      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0.0);
  final drawerHeader = const EdgeInsets.all(0.0);
  final categoryIcon = const EdgeInsets.all(8.0);
  final textField = const EdgeInsets.symmetric(horizontal: 8.0);
}

class _Width {
  const _Width();

  final border = 1.0;
}
