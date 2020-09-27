import 'package:auto_route/auto_route_annotations.dart';

import 'package:tada_team_test/layers/presentation/pages/main_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: MainPage, initial: true),
  ],
)
abstract class $Router {}
