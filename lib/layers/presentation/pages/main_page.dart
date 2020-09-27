import 'package:flutter/material.dart';

import 'package:tada_team_test/generated/l10n.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mainPageTitle),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
