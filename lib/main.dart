import 'package:flutter/material.dart';

import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/presentation/app_widget.dart';

void main() {
  configureDependencies();
  runApp(App());
}
