import 'package:flutter/material.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message.dart';
import 'package:web_socket_channel/io.dart';

import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_room_repository.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final IChatRoomsRepository repository = getIt();

  IChatRepository room;

  @override
  void initState() {
    super.initState();
    room = repository.enterRoom(roomName: 'test_2020-09-27', username: 'superjija');
    room.listenToMessages(print);
  }

  @override
  Widget build(BuildContext context) {
    final str = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(str.loginPageTitle),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: S.of(context).loginFormUsername,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: S.of(context).loginFormRoom,
                  border: const OutlineInputBorder(),
                ),
              ),
              RaisedButton(
                onPressed: () => room.sendMessage('jija'),
                child: const Text('send message'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
