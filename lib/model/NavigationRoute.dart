class NavigationRoute<int, String> extends Enum<int, String> {
  const NavigationRoute(int index, String name) : super(index, name);

  static const NavigationRoute DASHBOARD = const NavigationRoute(0, "/dashboard");
  static const NavigationRoute ACTIVITIES = const NavigationRoute(1, "/activities");
  static const NavigationRoute CATEGORIES = const NavigationRoute(2, "/categories");
  static const NavigationRoute GOALS = const NavigationRoute(3, "/goals");

  bool equals(NavigationRoute routes) {
    return index == routes.index;
  }
}

abstract class Enum<int, String> {
  final int index;
  final String name;

  const Enum(this.index, this.name);
}
