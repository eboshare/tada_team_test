import 'package:flutter/material.dart';

import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';

class ChatListPage extends StatelessWidget {
  final IChatClient client = getIt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
          },
        ),
      ),
    );
  }
}
